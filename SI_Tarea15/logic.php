<?php
$P1 = $_GET["P1"];
$P2 = $_GET["P2"];

if ($P1 == $P2){
    echo"<table align='center' style='background-color: AliceBlue; color: balck; border: 5px solid black;'>
<tr>
    <td>
        Empate!
    </td>
</tr>
</table>";
} else if (($P1 == 'Piedra' && $P2 =='Tijeras')||($P1 == 'Tijeras' && $P2 =='Papel')||($P1 == 'Papel' && $P2 =='Piedra')){
    echo"<table align='center' style='background-color: AliceBlue; color: balck; border: 5px solid black;'>
<tr>
    <td>
        Gana el jugador 1 con: ".$P1."!
    </td>
</tr>
</table>";
} else {
    echo"<table align='center' style='background-color: AliceBlue; color: balck; border: 5px solid black;'>
<tr>
    <td>
        Gana el jugador 2 con: ".$P2."! 
    </td>
</tr>
</table>";
}
?>