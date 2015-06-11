<?php
session_start();
require '../config.php';
$hotel = $_POST["hotel"];
$roomDate = $_POST["roomDate"];
$roomType = $_POST["roomType"];


$last = count($_SESSION["rooms"]) - 1;

$hotelTitle = $DB->query("SELECT `title` from `hotels` where `id`=$hotel")->fetch_assoc()["title"];
$roomDesc = $DB->query("SELECT `description` from `hotel_rooms` where `id`=$roomType")->fetch_assoc()["description"];

$temp = array("hotelId" => $hotel, "roomDate" => $roomDate, "roomTypeId" => $roomType, "hotelTitle" => $hotelTitle, "roomDesc" => $roomDesc);
$_SESSION["rooms"][] = $temp;

echo "<div class='one_derection'><b>$hotelTitle</b>, $roomDate, $roomDesc <a class=\"del_room\" cl-id=\"$last\" href=\"#\">Удалить</a></div>";
?>
