<?php

DEFINE("DB_USER","admin");
DEFINE("DB_PASSWORD","Password");
DEFINE("DB_HOST","localhost");
DEFINE("DB_NAME","inventory");

$dbc = @mysqli_connect(DB_USER, DB_PASSWORD, DB_HOST, DB_NAME)
OR die("Could not connect to database" .
		mysqli_connect_error());
?>
