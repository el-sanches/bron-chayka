<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}
require 'config.php';


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	
</body>
</html>