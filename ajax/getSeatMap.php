<?php

require '../config.php';
$busId = isset($_POST["busId"])?$_POST["busId"]:$_GET["id"];
$r = $DB->query("SELECT * from `buses` where `id`=$busId")->fetch_assoc()["seat_map"];
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	echo $r;
}

?>
