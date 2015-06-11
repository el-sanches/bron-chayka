<?php
session_start();
require '../config.php';
$c_dirDate = $_POST["c_dirDate"];
$c_dirBus = $_POST["c_dirBus"];
$c_dirSeat = $_POST["c_dirSeat"];



$dirDate = $DB->query("SELECT * from `dir_dates` where `id`=$c_dirDate")->fetch_assoc();
$dirName = $DB->query("SELECT `description` from `directions` where `id`=".$dirDate["direction_id"])->fetch_assoc()["description"];
$from = ($dirDate["from_city"] == 1)?"с города":"с курорта";
$bus = $DB->query("SELECT `description` from `buses` where `id`=$c_dirBus")->fetch_assoc()["description"];

$temp = array("dirDateId" => $c_dirDate, "dirBusId" => $c_dirBus, "seatNum" => $c_dirSeat, "dirName" => $dirName, "fromCity" => $from, "bus" => $bus, "dirDate" => $dirDate['date']);
$_SESSION["directions"][] = $temp;

$last = count($_SESSION["directions"]) - 1;

echo "<div class='one_derection'><b>$dirName</b>, {$dirDate['date']}, $from; Автобус: $bus, место №$c_dirSeat <a class=\"del_direction\" cl-id=\"$last\" href=\"#\">Удалить</a></div>";
?>
