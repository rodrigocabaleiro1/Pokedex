<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Sexos</title>
        <link href="../css/formulario.css" rel="stylesheet" type="text/css"/>
    </head> 
    <body>

        <?php
            include "funciones.php";
            unset($_POST['btnGuardar'])

          ?>

        <div id="formulario">
        <form action="" method="POST" name="formulario">
            <h2>Ingrese un nuevo sexo</h2>
            <div>
            <label for="nombre">Nombre:</label>
            <input id="nombre" type="text" placeholder="Nombre del sexo" name="txtNombre" required>
            </div>
            <input type="submit" value="Ingresar" name="btnGuardar"/> 
            <button onclick="location.href='tablas.php'" type="button">Volver</button>
        </form>
        </div>
        <div class="alert">    
<?php
    if (isset($_POST['btnGuardar'])) {
        $dataBase = conexion();
        $nombre = limpiar_cadena($_POST['txtNombre']);
            if (!empty($nombre)) {
                $dataBase->query("INSERT INTO sexo(nombre) VALUES('$nombre')");

        }
        }



?>
    </div>
    </body>
</html>
