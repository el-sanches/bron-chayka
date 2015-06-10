<?php

require '../config.php';
$rDate = $_POST["rDate"];
$hotelId = $_POST["hotelId"];
$r = $DB->query("SELECT `hotel_room_id` from `hotel_dates` where (`date`='$rDate') and (`hotel_id`=$hotelId)");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	while($row = $r->fetch_assoc()) {
		$id = $row["hotel_room_id"];
		$room = $DB->query("SELECT * from `hotel_rooms` where `id`=$id")->fetch_assoc()["description"];
		echo '<option value="'.$id.'">'.$room.'</option>';
	}
}

?>
