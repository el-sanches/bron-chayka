<?php
session_start();
require "config.php";

if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}

$manId = isset($_GET["manager"])?$_GET["manager"]:-1;
if ($manId >= 0) {
	$man = $DB->query("SELECT `fio` from `managers` where `id`=$manId")->fetch_assoc()["fio"];
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
</body>
</html>