<?php

DEFINE("DB_USER","melinda");
DEFINE("DB_PASSWORD","monkeylove");
DEFINE("DB_HOST","host");
DEFINE("DB_NAME","inventory");

$dbc = @mysqli_connect(DB_UDER, DB_PASSWORD, DB_HOST, DB_NAME)
OR die("Could not connect to database" .
		mysqli_connect_error());
?>