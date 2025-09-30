<?php
require_once('database.php');

$db = getDB();
if ($db) {
    echo "✅ Connected successfully to MySQL as {$db->host_info}";
} else {
    echo "❌ Connection failed. Check error log.";
}
?>
