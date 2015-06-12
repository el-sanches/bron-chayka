<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}

$id = $_POST["id"];

$_SESSION["directions"][$id] = array();
?>
