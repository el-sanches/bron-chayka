<?php
session_start();

if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
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
	<header>
		<h1><a href="/">Онлайн бронирование</a></h1>
	</header>
	<div class="wrapper">
		<div class="dobro">
			<?php echo "Добро пожаловать, <b>".$_SESSION["fio"]."</b><br>"; ?>
			<a href="/login.php?act=logout">Выход</a><br>
		</div>

		<div class="buttons">
			
			<a href="/new.php">Новый заказ</a>
			<a href="/hotel.php">Отели</a>
			<a href="/directions.php">Направления</a>
			<a href="/buses.php">Автобусы</a>
			<a href="/managers.php">Менеджеры</a>
		</div>

	</div>
</body>
</html>
