function addHandler(selector) {
		$(selector).children('a').click(function() {
			var c = confirm("Вы действительно хотите удалить этого клиента?");
			if (!c) return false;
			var c_id = $(this).attr('cl-id');
			var req = $.ajax({
				url: '/ajax/delClient.php',
				method: "POST",
				data: {cid: c_id},
				dataType: 'html',
				success: function(data) {
					$('a[cl-id='+c_id+']').parent().remove();
				},
				statusCode: {
					500: function(data) {
						//alert(data);
					}
				}
			});
			return false;
		});
	}

	function addHandlerDir(selector) {
		$(selector).children('a').click(function() {
			var c = confirm("Вы действительно хотите удалить это направление?");
			if (!c) return false;
			var c_id = $(this).attr('cl-id');
			var req = $.ajax({
				url: '/ajax/delDirection.php',
				method: "POST",
				data: {id: c_id},
				dataType: 'html',
				success: function(data) {
					$('a[cl-id='+c_id+']').parent().remove();
				},
				statusCode: {
					500: function(data) {
						//alert(data);
					}
				}
			});
			return false;
		});
	}

	function addHandlerRoom(selector) {
		$(selector).children('a').click(function() {
			var c = confirm("Вы действительно хотите удалить эту комнату?");
			if (!c) return false;
			var c_id = $(this).attr('cl-id');
			var req = $.ajax({
				url: '/ajax/delRoom.php',
				method: "POST",
				data: {id: c_id},
				dataType: 'html',
				success: function(data) {
					$('a[cl-id='+c_id+']').parent().remove();
				},
				statusCode: {
					500: function(data) {
						//alert(data);
					}
				}
			});
			return false;
		});
	}

	$(document).ready(function () {
		//$('#divAddCl').toggle();
		$('#add_client').click(function () {
			$('#divAddCl').toggle();
			return false;
		});

		//$('#divAddDir').toggle();
		$('#add_direction').click(function () {
			$('#divAddDir').toggle();
			return false;
		});

		//$('#divAddRoom').toggle();
		$('#add_room').click(function () {
			$('#divAddRoom').toggle();
			return false;
		});

		$('#c_submit').click(function() {
			var cfio = $('#c_fio').val();
			var cpasp = $('#c_passport').val();
			var cage = $('#c_age').val();
			var cphone = $('#c_phone').val();
			var ccom = $('#c_comment').val();
			var req = $.ajax({
				url: '/ajax/addClient.php',
				method: 'POST',
				data: {
					fio: cfio,
					passport: cpasp,
					age: cage,
					phone: cphone,
					comment: ccom
				},
				dataType: 'html',
				success: function(data) {
					$('#divClients').append(data);
					addHandler($('#divClients p:last-child'));
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
			return false;
		});		

		$('#c_dir').change(function() {
			var did = $('#c_dir option:selected').val();
			var req = $.ajax({
				url: 'ajax/getDirDates.php',
				method: 'POST',
				data: {dirId: did},
				dataType: 'html',
				success: function(data) {
					$('#c_dirDate').empty();
					$('#c_dirDate').append(data);
					//$('#c_dirDate option:first-child')
					$('#c_dirDate').change();
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
		});

		$('#c_dirDate').change(function() {
			var _dateId = $('#c_dirDate option:selected').val();
			var req = $.ajax({
				url: 'ajax/getDirBuses.php',
				method: 'POST',
				data: {dateId: _dateId},
				dataType: 'html',
				success: function(data) {
					$('#c_dirBus').empty();
					$('#c_dirBus').append(data);
					$('#c_dirBus').change();
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
		});

		$('#c_submitDir').click(function() {
			var dirDate = $('#c_dirDate').val();
			var dirBus = $('#c_dirBus').val();
			var dirSeat = $('#c_dirSeat').val();
			var req = $.ajax({
				url: 'ajax/addDirection.php',
				method: 'POST',
				data: {
					c_dirDate: dirDate,
					c_dirBus: dirBus,
					c_dirSeat: dirSeat
				},
				dataType: 'html',
				success: function(data) {
					//$('#divDirections').empty();
					$('#divDirections').append(data);
					addHandlerDir($('#divDirections p:last-child'));
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
			return false;
		});

		$('#c_hotel').change(function() {
			var hid = $('#c_hotel option:selected').val();
			var req = $.ajax({
				url: 'ajax/getRoomDates.php',
				method: 'POST',
				data: {id: hid},
				dataType: 'html',
				success: function(data) {
					$('#c_roomDate').empty();
					$('#c_roomDate').append(data);
					//$('#c_dirDate option:first-child')
					$('#c_roomDate').change();
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
		});

		$('#c_roomDate').change(function() {
			var date = $('#c_roomDate option:selected').val();
			var hid = $('#c_hotel option:selected').val();
			var req = $.ajax({
				url: 'ajax/getRooms.php',
				method: 'POST',
				data: {rDate: date, hotelId: hid},
				dataType: 'html',
				success: function(data) {
					$('#c_roomType').empty();
					$('#c_roomType').append(data);
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
		});

		$('#c_submitRoom').click(function() {
			var c_hotel = $('#c_hotel').val();
			var c_roomDate = $('#c_roomDate').val();
			var c_roomType = $('#c_roomType').val();
			var req = $.ajax({
				url: 'ajax/addRoom.php',
				method: 'POST',
				data: {
					hotel: c_hotel,
					roomDate: c_roomDate,
					roomType: c_roomType
				},
				success: function(data) {
					$('#divRooms').append(data);
					addHandlerRoom($('#divRooms p:last-child'));
				},
				statusCode: {
					500: function(data) {
						alert(data);
					}
				}
			});
			return false;
		});

		$('#c_dirBus').change(function() {
			var val = $(this).val();
			var req = $.ajax({
				url: 'ajax/getSeatMap.php',
				method: 'POST',
				data: {busId: val},
				success: function(data) {
					$('#seatMap').empty();
					$('#seatMap').append(data);
					busySeats();
					addSeatHandler();
				},
				statusCode: {
					500: function(data) {
						//alert(data);
					}
				}
			});
			return false;
		});

		$('#showSeatMap').click(function() {
			$('#seatMap').toggle();
			return false;
		});
		$('#seatMap').toggle();


		$('#c_dir').change();
		$('#c_hotel').change();
		
	});

function addSeatHandler() {
	$('.bombear').click(function() {
		if ($(this).parent().hasClass('pusto')) {
			return false;
		}
		if ($(this).parent().hasClass('sel')) {
			return false;
		}
		$('.bombear').parent().removeClass('sel');
		$(this).parent().addClass('sel');
		$('#c_dirSeat').val($(this).attr('id'));
		return false;
	});
}

function busySeats() {
	var bid = $('#c_dirBus').val();
	var dirDate = $('#c_dirDate').val();
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
				var app = '<span><div class="title_client">Клиенты:</div>';
				for(var j = 0; j < obj[i].clients.length; j++) {
					var c = obj[i].clients[j];
					app += '<div>'+c+'</div>';
				}
				app += '<div class="title_manager">Менеджер:</div>';
				app += '<div class="manager_bus">'+obj[i].manager+'</div></span>';
				$(a).append(app);
			}
		},
		statusCode: {
			500: function(data) {
				//alert(data);
			}
		}
	});
}
