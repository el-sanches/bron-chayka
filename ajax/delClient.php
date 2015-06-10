<?php

require '../config.php';
$cid = $_POST["cid"];
$DB->query("DELETE from `clients` where `id`=$cid");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	echo "({$DB->errno}) {$DB->error}";
	die();
} else {
echo "success";
}

?>
