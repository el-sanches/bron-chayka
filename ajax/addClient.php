<?php
session_start();
require '../config.php';
$fio = $_POST["fio"];
$passport = $_POST["passport"];
$age = $_POST["age"];

$q = "INSERT into `clients` (`fio`, `passport`, `age`) values ('$fio', '$passport', $age)";
$DB->query($q);
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query");
	echo "({$DB->errno}) {$DB->error}";
	die();
} else {
	$last = $DB->query("SELECT LAST_INSERT_ID() as last;")->fetch_assoc()["last"];
	$_SESSION["clients"][] = array("id" => $last);
echo "<div class='one_derection'><b>$fio</b>, $passport; Возраст: $age.   <a class=\"del_client\" cl-id=\"$last\" href=\"#\">Удалить</a></div>";
}
?>
