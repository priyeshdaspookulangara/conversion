<?php
/**
 * MySQL Library Database Setup & Bulk Import Tool
 * Converted from T-SQL / SQL Server script.
 */

set_time_limit(0);
ini_set('memory_limit', '512M');

$db_host = $_POST['db_host'] ?? '127.0.0.1';
$db_port = $_POST['db_port'] ?? '3306';
$db_user = $_POST['db_user'] ?? 'root';
$db_pass = $_POST['db_pass'] ?? '';
$db_name = $_POST['db_name'] ?? 'Library';

$message = '';
$logs = [];
$status_type = '';

// Include generated data definitions
require_once __DIR__ . '/data.php';

$is_post = isset($_SERVER['REQUEST_METHOD']) && $_SERVER['REQUEST_METHOD'] === 'POST';
$is_cli_run = (php_sapi_name() === 'cli') && in_array('--run', $argv ?? []);

if ($is_post || $is_cli_run) {
    $start_time = microtime(true);
    try {
        // Connect to MySQL server
        $dsn_no_db = "mysql:host={$db_host};port={$db_port};charset=utf8mb4";
        $pdo = new PDO($dsn_no_db, $db_user, $db_pass, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4"
        ]);

        // Create database if not exists
        $pdo->exec("CREATE DATABASE IF NOT EXISTS `{$db_name}` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci");
        $pdo->exec("USE `{$db_name}`");
        $logs[] = "Database `{$db_name}` ready.";

        // Disable foreign key checks for schema creation
        $pdo->exec("SET FOREIGN_KEY_CHECKS = 0");

        // Create tables
        $tables_created = 0;
        foreach ($table_schemas as $tableName => $schemaSql) {
            $pdo->exec($schemaSql);
            $tables_created++;
        }
        $logs[] = "Successfully created {$tables_created} tables.";

        // Bulk Insert Data
        $total_rows_inserted = 0;
        foreach ($bulk_inserts as $tableName => $data) {
            $cols = $data['cols'];
            $rows = $data['rows'];
            $rowCount = count($rows);

            if ($rowCount === 0) {
                continue;
            }

            $pdo->beginTransaction();
            // Bulk insert in batches of 100
            $batch_size = 100;
            for ($i = 0; $i < $rowCount; $i += $batch_size) {
                $batch = array_slice($rows, $i, $batch_size);
                $sql = "INSERT INTO `{$tableName}` ({$cols}) VALUES " . implode(", ", $batch);
                $pdo->exec($sql);
            }
            $pdo->commit();

            $total_rows_inserted += $rowCount;
            $logs[] = "Table `{$tableName}`: Bulk inserted {$rowCount} rows.";
        }

        $pdo->exec("SET FOREIGN_KEY_CHECKS = 1");

        $duration = number_format(microtime(true) - $start_time, 4);
        $status_type = 'success';
        $message = "Migration and Bulk Insert completed successfully in {$duration} seconds! Total rows inserted: {$total_rows_inserted}.";

    } catch (Exception $e) {
        if (isset($pdo) && $pdo->inTransaction()) {
            $pdo->rollBack();
        }
        $status_type = 'danger';
        $message = "Error occurred: " . $e->getMessage();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Database - MySQL Bulk Converter & Importer</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Malayalam:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Noto Sans Malayalam', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card { border-radius: 12px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); }
        .log-box {
            background-color: #1e1e1e;
            color: #d4d4d4;
            font-family: 'Noto Sans Malayalam', monospace;
            font-size: 0.9rem;
            max-height: 400px;
            overflow-y: auto;
            padding: 15px;
            border-radius: 8px;
        }
        .log-box .log-item { margin-bottom: 4px; }
        .log-box .log-item::before { content: "► "; color: #4ec9b0; }
        .malayalam-text { font-family: 'Noto Sans Malayalam', sans-serif; }
    </style>
</head>
<body>
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card mb-4">
                <div class="card-header bg-primary text-white p-3">
                    <h4 class="mb-0"><i class="bi bi-database-fill-gear"></i> MySQL Library Database Importer (Bulk Insert)</h4>
                </div>
                <div class="card-body p-4">
                    <p class="text-muted">This page converts and imports the SQL Server [Library] database schema and data into MySQL using optimized bulk inserts.</p>

                    <?php if ($message): ?>
                        <div class="alert alert-<?= $status_type ?> alert-dismissible fade show" role="alert">
                            <strong><?= ucfirst($status_type) ?>!</strong> <?= htmlspecialchars($message) ?>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    <?php endif; ?>

                    <form method="POST" action="">
                        <div class="row g-3 mb-3">
                            <div class="col-md-4">
                                <label for="db_host" class="form-label font-weight-bold">Host</label>
                                <input type="text" class="form-control" id="db_host" name="db_host" value="<?= htmlspecialchars($db_host) ?>" required>
                            </div>
                            <div class="col-md-2">
                                <label for="db_port" class="form-label font-weight-bold">Port</label>
                                <input type="text" class="form-control" id="db_port" name="db_port" value="<?= htmlspecialchars($db_port) ?>" required>
                            </div>
                            <div class="col-md-3">
                                <label for="db_user" class="form-label font-weight-bold">Username</label>
                                <input type="text" class="form-control" id="db_user" name="db_user" value="<?= htmlspecialchars($db_user) ?>" required>
                            </div>
                            <div class="col-md-3">
                                <label for="db_pass" class="form-label font-weight-bold">Password</label>
                                <input type="password" class="form-control" id="db_pass" name="db_pass" value="<?= htmlspecialchars($db_pass) ?>">
                            </div>
                        </div>

                        <div class="mb-4">
                            <label for="db_name" class="form-label font-weight-bold">Target Database Name</label>
                            <input type="text" class="form-control" id="db_name" name="db_name" value="<?= htmlspecialchars($db_name) ?>" required>
                        </div>

                        <button type="submit" class="btn btn-success btn-lg px-4"><i class="bi bi-play-fill"></i> Execute Bulk Import to MySQL</button>
                    </form>

                    <?php if (!empty($logs)): ?>
                        <hr class="my-4">
                        <h5>Execution Logs:</h5>
                        <div class="log-box">
                            <?php foreach ($logs as $log): ?>
                                <div class="log-item"><?= htmlspecialchars($log) ?></div>
                            <?php endforeach; ?>
                        </div>
                    <?php endif; ?>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Database Summary</h5>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Total Tables
                            <span class="badge bg-primary rounded-pill"><?= count($table_schemas) ?></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Tables with Bulk Data
                            <span class="badge bg-success rounded-pill"><?= count($bulk_inserts) ?></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Total Seed Rows
                            <span class="badge bg-info rounded-pill"><?= array_sum(array_map(fn($item) => count($item['rows']), $bulk_inserts)) ?></span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="card">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Malayalam Character Preview Sample (മലയാളം ഫോണ്ട് സാമ്പിൾ)</h5>
                </div>
                <div class="card-body malayalam-text">
                    <p class="mb-1"><strong>സ്ഥാപനം / Company Name:</strong> കസ്തൂർബാ സ്മാരക വായനശാല (KASTUBA SMARAKA VAYANASALA)</p>
                    <p class="mb-0"><strong>വിലാസം / Address:</strong> ഈസ്റ്റ് നട, ഇളംകുന്നപ്പുഴ, എറണാകുളം (EAST NADA, ELAMKUNNAPUZHA, ERNAKULAM)</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
