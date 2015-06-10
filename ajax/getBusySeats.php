<?php

require '../config.php';
$busId = $_POST["busId"];
$date = $_POST["date"];

$busySeats = "[";
$r = $DB->query("SELECT * from `orders_to_dirs` where (`date_dir_id`=$date) and (`bus_id`=$busId)");
while($t_ = $r->fetch_assoc()) {
	$busySeats .= "{";
	$busySeats .= '"seat": "'.$t_["seat_num"].'",';
	$oid = $t_["order_id"];
	$cl = '"clients": [';
	$order = $DB->query("SELECT * from `orders_to_clients` where `order_id`=$oid");
	while($c = $order->fetch_assoc()) {
		$fio = $DB->query("SELECT * from `clients` where `id`=".$c["client_id"])->fetch_assoc()["fio"];
		$cl .= '"'.$fio.'",';
	}
	$cl = substr($cl,0,-1);
	$cl .= "],";
	$busySeats .= $cl;
	$mid = $DB->query("SELECT * from `orders` where `id`=$oid")->fetch_assoc()["manager_id"];
	$man = $DB->query("SELECT * from `managers` where `id`=$mid")->fetch_assoc()["fio"];
	$busySeats .= '"manager": "'.$man.'"';
	$busySeats .= "},";
}
if (strlen($busySeats) > 2)
	$busySeats = substr($busySeats,0,-1);
$busySeats .= "]";
if ($DB->errno) {
	header("HTTP/1.0 500 Bad query ({$DB->errno}) {$DB->error}");
	die();
} else {
	echo $busySeats;
}

?>
