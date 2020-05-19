<?php
$host_db = "localhost";
$user_db = "root";
$pass_db = "root";
$db_name = "test_php";
$tbl_name = "persona";

$conexion = new mysqli($host_db, $user_db, $pass_db, $db_name);

if ($conexion->connect_error) {
 die("La conexion falló: " . $conexion->connect_error);
}
//echo "<h1>MySQL le esta dando permisos de ejecutar consultas</h1>"
?>