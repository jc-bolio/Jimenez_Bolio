<?php
$num1 = $_GET["num1"];
$num2 = $_GET["num2"];
$num3 = $_GET["num3"];
$res = $num1 + $num2 + $num3;

echo "<table background = red align = center>
    <tr> 
    <td><font color=blue></td>{$res}<td></font>
    </tr>
</table>";  
?>