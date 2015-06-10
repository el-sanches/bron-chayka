<?php
session_start();

$id = $_POST["id"];

$_SESSION["directions"][$id] = array();
?>
