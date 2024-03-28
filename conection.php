<?php

$server = "localhost";
$user = "root";
$pass = "root";
$db = "gearbox";

$conection = new mysqli($server, $user, $pass, $db);

if ($conection->connect_error) {
  die("Connection failed: " . $conection->connect_error);
} else {
  echo "GearBox Garage";
}