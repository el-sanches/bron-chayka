<?php

require '../config.php';
$dateId = $_POST["dateId"];
$r = $DB->query("SELECT * from `buses_to_dates` where `dir_date_id`=$dateId");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	while($row = $r->fetch_assoc()) {
		$t = $DB->query("SELECT * from `buses` where `id`=".$row["bus_id"])->fetch_assoc();
		echo '<option value="'.$t["id"].'">'.$t["description"].'</option>';
	}
}

?>
