<?php
session_start();
if (!isset($_SESSION["login"])) {
	header("Location: /login.php");
	die();
}
require 'config.php';

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css?t=4">
	<style type="text/css">
		@media print
		{
		body * { visibility: hidden; }
		#printArea * { visibility: visible; }
		#printArea { position: absolute; top: 40px; left: 30px; }
		}
	</style>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script>
		function busySeats(ar1, ar2) {
			var bid = ar1;
			var dirDate = ar2;
			var req = $.ajax({
				url: 'ajax/getBusySeats.php',
				method: 'POST',
				//dataType: 'json',
				data: {
					busId: bid,
					date: dirDate
				},
				success: function(data) {
					var obj = $.parseJSON(data);
					for(var i = 0; i < obj.length; i++) {
						var sid = obj[i].seat;
						var a = $('#'+sid);
						$(a).parent().addClass('pusto');
						var app = '<div class="short"><u>Клиент:</u><br>' + obj[i].clients[0] + '<br><u>Менеджер:</u><br>' + obj[i].manager + '</div>';
						if (obj[i].clients.length > 1) {
							app += '<span>';
							for(var j = 0; j < obj[i].clients.length; j++) {
								var c = obj[i].clients[j];
								app += '<div>'+c+'</div>';
							}
							app += '</span>';
						}
						$(a).append(app);
					}
				},
				statusCode: {
					500: function(data) {
						//alert(data);
					}
				}
			});
		};
		$(document).ready(function() {

			$('#c_dir').change(function() {
				var did = $('#c_dir option:selected').val();
				var req = $.ajax({
					url: 'ajax/getDirDates.php',
					method: 'POST',
					data: {dirId: did},
					dataType: 'html',
					success: function(data) {
						$('#c_date').empty();
						$('#c_date').append(data);
						//$('#c_dirDate option:first-child')
						$('#c_date').change();
					},
					statusCode: {
						500: function(data) {
							alert(data);
						}
					}
				});
			});

			$('#c_date').change(function() {
				var _dateId = $('#c_date option:selected').val();
				var req = $.ajax({
					url: 'ajax/getDirBuses.php',
					method: 'POST',
					data: {dateId: _dateId},
					dataType: 'html',
					success: function(data) {
						$('#c_bus').empty();
						$('#c_bus').append(data);
						$('#c_bus').change();
					},
					statusCode: {
						500: function(data) {
							alert(data);
						}
					}
				});
			});

			$('#c_bus').change(function() {
				var ar1 = $(this).val();
				var ar2 = $('#c_date').val();
				var req = $.ajax({
					url: 'ajax/getSeatMap.php',
					method: 'POST',
					data: {busId: ar1},
					success: function(data) {
						$('#seatMap').empty();
						$('#seatMap').append(data);
						busySeats(ar1, ar2);
					},
					statusCode: {
						500: function(data) {
							alert(data);
						}
					}
				});
				
			});
			
			$('#print').click(function() {
				window.print();
			});
			
			$('#c_dir').change();
		});
	</script>
</head>
<body>
<header>
		<h1><a href="/">Онлайн бронирование</a></h1>
	</header>
<div class="wrapper">
<div id="divAddDir" class="form_marsh">
<div class="text_input"><span>Направление: </span><select name="c_dir" id="c_dir">
	<?php
	$r = $DB->query("SELECT * from `directions`");
	while($row = $r->fetch_assoc()) {
		echo '<option value="'.$row["id"].'">'.$row["description"].'</option>';
	}
	?>
	</select></div>
	<div class="text_input"><span>Дата:</span> <select id="c_date"></select></div>
	<div class="text_input"><span>Автобус: </span> <select id="c_bus"></select></div>
</div>
<div id="printArea">
<div id="seatMap"></div>
</div>
<button id="print">Печать</button>
</div>
</body>
</html>