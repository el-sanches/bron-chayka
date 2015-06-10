<?php

require '../config.php';
$id = $_POST["id"];
$r = $DB->query("SELECT distinct `date` from `hotel_dates` where `hotel_id`=$id");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	while($row = $r->fetch_assoc()) {
		echo '<option value="'.$row["date"].'">'.$row["date"].'</option>';
	}
}

?>
