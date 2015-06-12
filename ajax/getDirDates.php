<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}
require '../config.php';
$dirId = $_POST["dirId"];
$r = $DB->query("SELECT * from `dir_dates` where `direction_id`=$dirId");
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	while($row = $r->fetch_assoc()) {
		$t = strtotime($row["date"]);
		setlocale(LC_TIME, "russian");
		$d =iconv("windows-1251", "utf-8", strftime("%d %B %Y", $t));
		setlocale(LC_TIME, "en_US.UTF-8");
		echo '<option value="'.$row["id"].'">'.$d.', '.(($row["from_city"] == 1)?'с города':'с курорта').'</option>';
	}
}

?>
