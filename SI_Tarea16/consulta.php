<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tarea 16</title>
</head>
<body>
<?php
header('Content-Type: text/html; charset=ISO-8859-1');

require("conexion.php");

$mysqli = new mysqli('localhost', 'root', 'root', 'test_php');
$query = "select * from persona";

if ($result = $mysqli->query($query)) {
    echo '<br><table class = "highlight">
    <thead>
    <tr>
        <th>Usuario</th>
        <th>Carrera</th>
        <th>Cuenta</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Email</th>
        <th>Password</th>
        <th>Fecha de registro</th>
        <th>Permisos</th>
    </tr>
    </thead>';

    while ($row = $result->fetch_assoc()) {
        $usuario = $row["nombre_usuario"];
        $carrera = $row["carrera"];
        $cuenta = $row["no_cuenta"];
        $direccion = $row["direccion"];
        $telefono = $row["telefono"];
        $email = $row["email"];
        $password = $row["password"];
        $fecharegistro = $row["FechaRegistro"];
        $permisos = $row["Permisos"];
    
        echo '<tbody>
            <tr>
                <td>'.$usuario.'</td>
                <td>'.$carrera.'</td>
                <td>'.$cuenta.'</td>
                <td>'.$direccion.'</td>
                <td>'.$telefono.'</td>
                <td>'.$email.'</td>
                <td>'.$password.'</td>
                <td>'.$fecharegistro.'</td>
                <td>'.$permisos.'</td>
            </tr>
            </tbody>';
    }
    echo "</table>";
    $result->free();
} else{
    echo "<h1 style='color:red'>Sin ningún registro</h1>";
}
?>
</body>
</html>