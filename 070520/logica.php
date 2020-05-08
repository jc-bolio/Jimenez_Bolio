<?php
$num1 = $_GET["num1"];
$num2 = $_GET["num2"];
$num3 = $_GET["num3"];
$res = $num1 + $num2 + $num3;

echo"<table align='center' style='background-color: red; color: balck; border: 5px solid black;'>
<tr>
    <td>
        Resultado es : ".$res."
    </td>
</tr>
</table>";
?>