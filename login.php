<?php
session_start();
require "config.php";

if (isset($_GET["act"]) && $_GET["act"] == "logout") {
	session_unset();
	session_destroy();
}

if (isset($_SESSION["login"])) {
	header("Location: /");
	die();
}

if (isset($_POST["enter"])) {
	$login = $_POST["login"];
	$pass = $_POST["password"];
	$res = $DB->query("select * from `managers` where `login`='$login'");
	if ($DB->errno) {
		die("Failed to execute query: (".$DB->errno.") ".$DB->error);
	}
	if ($res->num_rows <= 0) {
		$err = 1;
	} else {
		$res = $res->fetch_assoc();
		$hash = $res["password"];
		if (password_verify($pass, $hash)) {
			$_SESSION["login"] = $login;
			$_SESSION["fio"] = $res["fio"];
			$_SESSION["id"] = $res["id"];
			header("Location: /");
			die();
		} else {
			$err = 1;
		}
	}
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<?php
		if (isset($err)) {
			echo "<b>Неправильный логин или пароль!</b><br>";
		}
	?>
	<div class="login_form">
		<form action="" method="post">	
		<input type="text" name="login" maxlength="255" placeholder="Логин"/><br>	
		<input type="password" name="password" maxlength="255" placeholder="Пароль"/><br>
		<input type="submit" value="Войти" name="enter"/>
	</div>


</form>
</body>
</html>
