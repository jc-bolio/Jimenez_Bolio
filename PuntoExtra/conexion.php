<?php
$host_db = "localhost";
$user_db = "root";
$pass_db = "ChocolateMilk12";
$db_name = "asistencia";
$tbl_name = "usuarios";

$conexion = new mysqli($host_db, $user_db, $pass_db);

if ($conexion->connect_error) {
 die("La conexion falló: " . $conexion->connect_error);
}
?>
