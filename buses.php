<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}
require 'config.php';

if (isset($_POST["addBus"])) {
	$desc = $_POST["desc"];
	$seatMap = $_POST["seatMap"];
	$DB->query("INSERT into `buses` (`description`, `seat_map`) values('$desc', '$seatMap')");
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
	<h2>Список автобусов</h2>
	<table cellspacing="0" class="table_managers" >
		<tr class="title_tab"><td>#ID</td><td>Описание</td><td></td><td></td></tr>
		<?php
		$r = $DB->query("SELECT * from `buses`");
		while($b = $r->fetch_assoc()) {
			echo '<tr>';
			echo '<td>#'.$b["id"].'</td>';
			echo '<td>'.$b["description"].'<td>';
			echo '<td><a href="showSeatMap.php?id='.$b["id"].'" target="_blank">Показать карту мест</a></td>';
			echo '</tr>';
		}
		?>
	</table>
	<br>
	<h2>Добавить автобус</h2>
	<form action="" method="post">
		<label for="">Описание:</label>
		<input type="text" name="desc" id=""><br>
		<label for="">Карта мест:</label><br>
		<textarea name="seatMap" id="" cols="55" rows="15"></textarea><br>
		<input type="submit" class="btn_sub" value="Добавить" name="addBus">
	</form>
</div>
</body>
</html>