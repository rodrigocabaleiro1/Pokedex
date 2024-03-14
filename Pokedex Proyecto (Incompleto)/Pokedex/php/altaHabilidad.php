<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Habilidades</title>
        <link href="../css/formulario.css" rel="stylesheet" type="text/css"/>
    </head> 
    <body>

        <?php
            include "funciones.php";
          ?>

        <div id="formulario">
        <form action="" method="POST" name="formulario">
            <h2>Ingrese una nueva Habilidad</h2>
            <div>
            <label for="nombre">Nombre:</label>
            <input id="nombre" type="text" placeholder="Nombre de la habilidad" name="txtNombre" required>
            </div>
            <div>
            <label for="descripcion">Descripción:</label>
            <input id="descripcion" type="text" placeholder="Efecto de la habilidad" name="txtDescripcion" required>
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
        $descripcion = $_POST['txtDescripcion'];
        $coincidencias = 0;
        $habilidades = $dataBase->query("SELECT * FROM habilidades");

        foreach ($habilidades as $habilidad){
            if ($habilidad['nombre'] == $nombre) {
               $coincidencias = $coincidencias + 1;
            }
                            }
        if ($coincidencias < 1) {
            if (!empty($nombre)) {
                $dataBase->query("INSERT INTO habilidades(nombre,descripcion) VALUES('$nombre','$descripcion')");

        }
        }
        }



?>
    </div>
    </body>
</html>
