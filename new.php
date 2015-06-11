<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}
if ($_SESSION["readonly"]) {
	header("Location: /");
	die();
}
require 'config.php';

if (isset($_POST["step"]))
	$step = $_POST["step"];
else {
	$step = 1;
	$_SESSION["directions"] = array();
	$_SESSION["rooms"] = array();
	$_SESSION["clients"] = array();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<style type="text/css">
		@media print
		{
		body * { visibility: hidden; }
		#printArea * { visibility: visible; }
		#printArea { position: absolute; top: 40px; left: 30px; }
		}
	</style>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="js/jquery.print.js"></script>
	<script src="new.js"></script>
	<link rel="stylesheet" href="style.css?t=4">
</head>
<body>
<div class="wrapper">
<h3><a href="/">На главную</a></h3>
<br>
	<?php
	if ($step == 1) {
	?>

	<form action="" method="post">
	<b>Выберите тип путевки:</b><br>
		<select name="type" id="">
			<option value="1">Проезд + Проживание</option>
			<option value="2">Только проезд</option>
			<option value="3">Только проживание</option>
		</select><br>
		<input type="hidden" name="step" value="2"/>
		<input type="submit" name="next" value="Далее"/>
	</form>

	<?php
	} //end of step 1
	elseif ($step == 2) {
		$_SESSION["order_type"] = $_POST["type"];
	?>


	<form action="" method="post">
		<b>Клиенты:</b> <br> <a href="#" id="add_client">Добавить клиента</a><br>
		<div id="divAddCl">
			ФИО клиента: <input type="text" id="c_fio" maxlength="255"><br>
			Паспортные данные: <input type="text" id="c_passport" maxlength="255"><br>
			Возраст: <input type="text" id="c_age"><br>
			Телефон: <input type="text" id="c_phone"><br>
			Комментарий: <br> <textarea id="c_comment" cols="30" rows="10"></textarea><br>
			<button id="c_submit">Добавить</button>
		</div>
		<div id="divClients">
			
		</div>
		<br>
		<?php if ($_SESSION["order_type"] == 1 || $_SESSION["order_type"] == 2) { ?>
		<b>Маршруты: </b> <br> <a href="#" id="add_direction">Добавить маршрут</a><br>
		<div id="divAddDir">
			Направление: <select name="c_dir" id="c_dir">
				<?php
				$r = $DB->query("SELECT * from `directions`");
				while($row = $r->fetch_assoc()) {
					echo '<option value="'.$row["id"].'">'.$row["description"].'</option>';
				}
				?>
			</select><br>
			Дата: <select name="c_dirDate" id="c_dirDate"></select><br>

			Автобус: <select name="c_dirBus" id="c_dirBus"></select><br>
			<a href="#" id="showSeatMap">Показать карту мест</a>
			<div id="seatMap">
				
			</div>
			<input type="hidden" name="c_dirSeat" id="c_dirSeat"><br>
				
			
			<button id="c_submitDir">Добавить</button>
		</div>

		<div id="divDirections">
				
		</div>
		<?php } ?>
		<br>
		<?php if ($_SESSION["order_type"] == 1 || $_SESSION["order_type"] == 3) { ?>
		<b>Проживание: </b> <br> <a href="#" id="add_room">Добавить номер отеля</a><br>
		<div id="divAddRoom">
			Отель: <select id="c_hotel">
				<?php
				$r = $DB->query("SELECT * from `hotels`");
				while($row = $r->fetch_assoc()) {
					echo '<option value="'.$row["id"].'">'.$row["title"].'</option>';
				}
				?>
			</select><br>
			Дата: <select id="c_roomDate"></select><br>

			Тип номера: <select id="c_roomType"></select><br>
				
			
			<button id="c_submitRoom">Добавить</button>
		</div>

		<div id="divRooms">
				
		</div>
		<?php } ?>
		<br>
		<input type="text" name="price" placeholder="Введите цену"/><br>
		<textarea name="comment" id="" cols="30" rows="10" placeholder="Комментарий"></textarea>

		<br><br>
		<input type="hidden" name="step" value="3"/>
		<input type="submit" value="Сохранить заявку" name="save"/>

	</form>
	<?php
	} //end of step 2
	elseif ($step == 3) {
		$price = $_POST["price"];
		$comment = $_POST["comment"];
		$user_id = $_SESSION["id"];
		$q = "INSERT into `orders` (`price`, `comment`,`date`, `manager_id`) values($price, '$comment', now(), $user_id)";
		$DB->query($q);
		if ($DB->errno) {
			die("({$DB->errno}) {$DB->error}");
		} else {
			$last = $DB->query("SELECT LAST_INSERT_ID() as last;")->fetch_assoc()["last"];
			//присоединим клиентов
			foreach($_SESSION["clients"] as $client) {
				if ($client !== array()) {
					$DB->query("INSERT into `orders_to_clients` (`order_id`, `client_id`) values($last, ".$client["id"].");");
				}
			}

			//присоединим направления
			foreach ($_SESSION["directions"] as $dir) {
				if ($dir !== array()) {
					$dateId = $dir["dirDateId"];
					$busId  = $dir["dirBusId"];
					$seat = $dir["seatNum"];
					$DB->query("INSERT into `orders_to_dirs` (`order_id`, `date_dir_id`, `bus_id`, `seat_num`) values($last, $dateId, $busId, $seat);");
				}
			}

			//присоединим номера
			foreach($_SESSION["rooms"] as $room) {
				if ($room !== array()) {
					$hotelId = $room["hotelId"];
					$roomDate  = $room["roomDate"];
					$roomTypeId = $room["roomTypeId"];
					$DB->query("INSERT into `orders_to_dates` (`order_id`, `hotel_id`, `room_date`, `room_id`) values($last, $hotelId, '$roomDate', $roomTypeId);");
				}
			}

		}
	?>
	<div id="printArea">
	<h2>Заказ #<?=$last?></h2>
	<p>
		<h3>Клиенты:</h3>
		<?php

		foreach($_SESSION["clients"] as $client) {
			if ($client !== array()) {
				echo '<p>';
				$info = $DB->query("SELECT * from `clients` where `id`=".$client["id"])->fetch_assoc();
				echo '<strong>'.$info['fio'].'</strong><br>';
				if (trim($info["passport"])) {
					echo 'Паспорт: '.$info["passport"].'<br>';
				}
				if (trim($info["age"])) {
					echo 'Возраст: '.$info["age"];
				}
				echo '</p>';
			}
		}
		if ($_SESSION["order_type"] == 1 || $_SESSION["order_type"] == 2) {
			echo '<h3>Направления:</h3>';
			foreach ($_SESSION["directions"] as $dir) {
				if ($dir !== array()) {
					$dateId = $dir["dirDateId"];
					$busId  = $dir["dirBusId"];
					$seat = $dir["seatNum"];
					echo '<p>';
					echo '<strong>'.$dir["dirName"].'</strong><br>';
					echo 'Дата: '.$dir["dirDate"].', '.$dir["fromCity"].'<br>';
					echo 'Автобус '.$dir["bus"].', место №'.$seat;
					echo '</p>';
				}
			}
		}

		if ($_SESSION["order_type"] == 1 || $_SESSION["order_type"] == 3) {
			echo '<h3>Забронированные номера:</h3>';
			foreach($_SESSION["rooms"] as $room) {
				if ($room !== array()) {
					echo '<p>';
					echo '<strong>Отель/Гостиница: '.$room['hotelTitle'].'</strong><br>';
					echo 'Дата: '.$room["roomDate"].'<br>';
					echo 'Тип комнаты: '.$room["roomDesc"];
					echo '</p>';
				}
			}
		}

		?>
	</p>
	</div>
	<button id="print">Печать</button>
	<script>
		$('#print').click(function() {
			window.print();
		});
	</script>
	<?php
	} //end of step 3

	?>
</div>
</body>
</html>