<?php

require '../config.php';
$dirId = $_POST["dirId"];
$r = $DB->query("SELECT * from `dir_dates` where `direction_id`=$dirId");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	while($row = $r->fetch_assoc()) {
		echo '<option value="'.$row["id"].'">'.$row["date"].', '.(($row["from_city"] == 1)?'с города':'с курорта').'</option>';
	}
}

?>
