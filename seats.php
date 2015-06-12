<?php
session_start();
require "config.php";

if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}

if (isset($_GET["busId"]) {
	$busId = $_GET["busId"];
} else {
	header("Location: /");
	die();
}

if (isset($_GET["busId"]) {
	$date = $_GET["date"];
} else {
	header("Location: /");
	die();
}

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
		@media print {
			body * { visibility: hidden; }			
			#printArea * { visibility: visible; }
			#allOrders { display: none; }
			#printArea { position: absolute; top: 40px; left: 30px; }
			#printArea a {color: #000; text-decoration: none;}
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
	<h2>Заказы<?=($manId>=0)?" менеджера $man":""?></h2>
	<a id="allOrders" href="/orders.php"><h3>Все заказы</h3></a>
	<table>
		<thead>
			<tr>
				<th>#ID</th>
				<th>Цена</th>
				<th>Дата добавления</th>
				<th>Менеджер</th>
				<th>Комментарий</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$where = ($manId >= 0)?" where `manager_id`=$manId":"";
			$res = $DB->query("SELECT * from `orders`$where");
			while($o = $res->fetch_assoc()) {
				echo "<tr>";
				echo '<td>#'.$o["id"].'</td>';
				echo '<td>'.$o["price"].'</td>';
				echo '<td><a href="/order.php?id='.$o["id"].'" target="_blank">'.$o["date"].'</a></td>';
				$man = $DB->query("SELECT `fio` from `managers` where `id`=".$o["manager_id"])->fetch_assoc()["fio"];
				echo '<td>'.$man.'</td>';
				echo '<td>'.$o["comment"].'</td>';
				echo "</tr>";
			}

			?>
		</tbody>
	</table>
</div>

<br>
<button id="btnPrint">Печать</button>
</div>
</body>
</html>