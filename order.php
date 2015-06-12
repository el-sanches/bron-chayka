<?php
session_start();
require "config.php";

if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}

if (isset($_GET["id"])) {
	$orderId = $_GET["id"];
} else {
	header("Location: /managers.php");
	die();
}

$order = $DB->query("SELECT * from `orders` where `id`=$orderId")->fetch_assoc();
$man = $DB->query("SELECT `fio` from `managers` where `id`=".$order["manager_id"])->fetch_assoc()["fio"];

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script>
	$(document).ready(function() {
		$('#btnPrint').click(function() {
			window.print();
		});
	});
	</script>
	<style type="text/css">
		.order {
			border: 1px solid black;
			border-collapse: collapse;
		}
		.order tr {
			border: 1px solid black;
			border-collapse: collapse;
		}
		@media print {
			body * { visibility: hidden; }
			#printArea * { visibility: visible; }
			#printArea { position: absolute; top: 40px; left: 30px; }
		}
	</style>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<header>
		<h1><a href="/">Онлайн бронирование</a></h1>
	</header>
<div class="wrapper">

<div id="printArea">
	<h2>Заказ #<?=$order["id"]?></h2>
	<table cellspacing="0" class="table_managers left print_table" border="0">
		<tr>
			<td><strong>#ID</strong></td>
			<td><?=$order["id"]?></td>
		</tr>
		<tr>
			<td><strong>Цена</strong></td>
			<td><?=$order["price"]?></td>
		</tr>
		<tr>
			<td><strong>Дата добавления</strong></td>
			<td><?=$order["date"]?></td>
		</tr>
		<tr>
			<td><strong>Менеджер</strong></td>
			<td><?=$man?></td>
		</tr>
		<tr>
			<td><strong>Комментарий</strong></td>
			<td><?=$order["comment"]?></td>
		</tr>
	</table>
	<h3>Клиенты:</h3>
	<table class="order table_managers .print_table" cellspacing="0" border="0">
	<?php
	$res = $DB->query("SELECT * from `orders_to_clients` where `order_id`=$orderId");
	while($cl = $res->fetch_assoc()) {
		$clId = $cl["client_id"];
		$client = $DB->query("SELECT * from `clients` where `id`=$clId")->fetch_assoc();
		echo '<tr>';
		$passport = $client["passport"]?("".$client["passport"]):"";
		$age = $client["age"]?("возраст: ".$client["age"]):"";
		$phone = $client["phone"]?("телефон: ".$client["phone"]):"";
		$comment = $client["comment"]?("комментарий: ".$client["comment"]):"";
		echo "<td>{$client['fio']}</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>$passport</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>$age</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>$phone</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>$comment</td>";
		echo "</tr>";


	}
	?>
	</table>
	<br>
	<h3>Направления:</h3>
	<table class="order table_managers" cellspacing="0" border="0">
	<?php
	$res = $DB->query("SELECT * from `orders_to_dirs` where `order_id`=$orderId");
	while($cl = $res->fetch_assoc()) {
		$dateDirId = $cl["date_dir_id"];
		$busId = $cl["bus_id"];
		$bus = $DB->query("SELECT * from `buses` where `id`=$busId")->fetch_assoc()["description"];
		$seat = $cl["seat_num"];
		$dirDate = $DB->query("SELECT * from `dir_dates` where `id`=$dateDirId")->fetch_assoc();
		$fromCity = $dirDate["from_city"]?" с города":" с курорта";
		$direction = $DB->query("SELECT * from `directions` where `id`=".$dirDate["direction_id"])->fetch_assoc()["description"];
		echo '<tr>';
		echo "<td>$direction</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>{$dirDate['date']}</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>$fromCity</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>Автобус: $bus</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>место №$seat</td>";
		echo "</tr>";
	}
	?>
	</table>
	<br>
	<h3>Проживание:</h3>
	<table class="order table_managers" cellspacing="0" border="0">
	<?php
	$res = $DB->query("SELECT * from `orders_to_dates` where `order_id`=$orderId");
	while($cl = $res->fetch_assoc()) {
		$hotelId = $cl["hotel_id"];
		$hotel = $DB->query("SELECT * from `hotels` where `id`=$hotelId")->fetch_assoc()["title"];
		$date = substr($cl["room_date"], 0, 10);
		$roomId = $cl["room_id"];
		$room = $DB->query("SELECT * from `hotel_rooms` where `id`=$roomId")->fetch_assoc()["description"];
		echo '<tr>';
		echo "<td>Отель/Гостиница: $hotel</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>Дата: $date</td>";
		echo "</tr>";

		echo "<tr>";
		echo "<td>Тип комнаты: $room</td>";
		echo "</tr>";

		
	}
	?>
	</table>
</div>

<br>
<button class="btn_sub" id="btnPrint">Печать</button>
</div>
</body>
</html>