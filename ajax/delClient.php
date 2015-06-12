<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}
require '../config.php';
$cid = $_POST["cid"];
$_SESSION["clients"][$cid] = array();
$DB->query("DELETE from `clients` where `id`=$cid");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	echo "({$DB->errno}) {$DB->error}";
	die();
} else {
echo "success";
}

?>
