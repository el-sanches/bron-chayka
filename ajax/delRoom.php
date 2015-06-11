<?php
session_start();
require '../config.php';
echo var_export($_SESSION["rooms"]);
//var_dump($_SESSION);
$id = $_POST["id"];
echo $_POST["id"];
$rid = $_SESSION["rooms"][$id]["roomTypeId"];
$d = $_SESSION["rooms"][$id]["roomDate"];

$DB->query("UPDATE `hotel_dates` set `free_room`=1 where (`hotel_room_id`=$rid) and (`date`='$d')");

$_SESSION["rooms"][$id] = array();
?>
