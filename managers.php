<?php
session_start();
require "config.php";

if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}

if (isset($_GET["delete"])) {
	$id = $_GET["delete"];
	$res = $DB->query("SELECT * from `managers` where `id`=$id");
	if ($res->num_rows > 0) {
		$DB->query("DELETE from `managers` where `id`=$id");
		if ($DB->errno) {
			die("<h1>({$DB->errno}) {$DB->error}</h1>");
		}
	}
}

if (isset($_POST["addmngr"])) {
	$login = $_POST["login"];
	$fio = $_POST["fio"];
	$pass = $_POST["pass"];

	$DB->query("INSERT into `managers` (`fio`, `login`, `password`) values('$fio', '$login', '".password_hash($pass, PASSWORD_DEFAULT)."')");
	if ($DB->errno) {
		die("Failed to execute query: (".$DB->errno.") ".$DB->error);
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="js/script.js"></script>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<header>
		<h1><a href="/">Онлайн бронирование</a></h1>
	</header>
<div class="wrapper">
	<h2>Добавить менеджера</h2>
	<form action="" method="post">	

		<div class="managers">
			<div class="item_manager"><label>ФИО: </label></td><td><input type="text" name="fio" id="fio"></div>
			<div class="item_manager"><label>Логин: </label></td><td><input type="text" name="login" id="login"></div>
			<div class="item_manager"><label>Пароль: </label></td><td><input type="password" id="pass" name="pass"></div>
			<div class="item_manager"><label>Подтверждение пароля: </label></td><td><input type="password" id="pass_check"></div>
			<input type="submit" class="btn_sub" name="addmngr" value="Добавить" id="addmngr">
		</div>
	</form>
	<br>
	<h2>Список менеджеров</h2>
	<table cellspacing="0" class="table_managers" border="0">
		<thead>
			<tr>
				<th>#ID</th>
				<th>ФИО</th>
				<th>Логин</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<?php

			$res = $DB->query("SELECT * from `managers`");
			while($man = $res->fetch_assoc()) {
				echo "<tr>";
				echo '<td>#'.$man["id"].'</td>';
				echo '<td><a href="/orders.php?manager='.$man["id"].'">'.$man["fio"].'</a></td>';
				echo '<td>'.$man["login"].'</td>';
				echo '<td><a href="?delete='.$man["id"].'" class="delete_man">Удалить</a></td>';
				echo "</tr>";
			}

			?>
		</tbody>
	</table>
</div>

</body>
</html>