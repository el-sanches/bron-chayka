<?php 
	$dbHost = "localhost";
	$dbLogin = "root";
	$dbPass = "";
	$dbName = "bronka";

	$DB = new mysqli($dbHost, $dbLogin, $dbPass, $dbName);
	if ($DB->connect_errno) {
		die("Failed to connect to MySQL: (".$DB->connect_errno.") ".$DB->connect_error);
	}
	$DB->set_charset("utf8");

	function renderTable($tableName) {

	}

	function renderAddForm($tableName, $index) {

	}

	function renderEditForm($tableName, $index) {

	}
?>