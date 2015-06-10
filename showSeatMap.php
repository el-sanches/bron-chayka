<?php

require 'config.php';
$busId = $_GET["id"];
$r = $DB->query("SELECT * from `buses` where `id`=$busId")->fetch_assoc()["seat_map"];
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	$r = '<html><head><link rel="stylesheet" href="style.css?t=4"></head><body>'.$r.'</body></html>';
	echo $r;
}

?>
