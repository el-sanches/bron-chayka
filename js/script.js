function validateFio(selector) {
	var val = $(selector).val();
	if (val.trim() != '') return true;
	return false;
}

function validateLogin(selector) {
	var val = $(selector).val();
	var re = /^[a-zA-Z0-9_]+$/i;
	if (!re.test(val.trim())) return false;
	return true;
}

function validatePass(pass, passCheck) {
	var val = $(pass).val();
	var valCheck = $(passCheck).val();
	var re = /^[\w\d_-]+$/i;
	if (!re.test(val)) return 1;
	if (val != valCheck) return -1;
	return 0;
}

$(document).ready(function() {

	$('.delete_man').click(function() {
		var c = confirm('Вы действительно хотите удалить этого менеджера?');
		if (!c) return false;
	});

	$('.readonly_man').click(function() {
		var c = confirm('Этот менеджер не сможет добавлять заказы. Хотите продолжить?');
		if (!c) return false;
	});

	$('#addmngr').click(function() {
		if (!validateFio("#fio")) {
			alert("Введите ФИО!");
			return false;
		}
		if (!validateLogin("#login")) {
			alert("Логин может содержать только латинские символы, цифры и символ подчеркивания!");
			return false;
		}
		if ((passVal = validatePass("#pass", "#pass_check")) != 0) {
			if (passVal == 1) alert("Пароль может содержать только буквы, цифры, знак подчеркивания и дефис!");
			else
				alert("Пароли не совпадают!");
			return false;
		}
	});

});