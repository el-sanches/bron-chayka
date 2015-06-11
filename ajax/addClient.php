<?php
session_start();
require '../config.php';
$fio = $_POST["fio"];
$passport = $_POST["passport"];
$age = $_POST["age"];
$phone = $_POST["phone"];
$comment = $_POST["comment"];
if (!$age) $age = 0;
$q = "INSERT into `clients` (`fio`, `passport`, `age`, `phone`, `comment`) values ('$fio', '$passport', $age, '$phone', '$comment')";
$DB->query($q);
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	echo "({$DB->errno}) {$DB->error}";
	die();
} else {
	$last = $DB->query("SELECT LAST_INSERT_ID() as last;")->fetch_assoc()["last"];
	$_SESSION["clients"][$last] = array("id" => $last);
	if ($comment) {
		$show_c = (mb_strlen($comment, 'UTF8') > 20)?mb_substr($comment, 0, 18, 'UTF8')."...":$comment;
	} else {
		$show_c = "";
	}
	$age_s = $age?$age:"";
echo "<div class='one_derection'><b>$fio</b>, $passport; Возраст: $age_s; Телефон: $phone; Комментарий: $show_c <a class=\"del_client\" cl-id=\"$last\" href=\"#\">Удалить</a></div>";

}
?>
