<?php
include "funciones.php";            
            $dataBase = conexion();
            $tipologia = $dataBase->query("SELECT * FROM tipologia");

foreach ($tipologia as $valor){
    echo "<br>".$valor['id_tipologia'];
}

?>