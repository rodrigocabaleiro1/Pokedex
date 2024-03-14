<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Categorias</title>
        <link href="../css/formulario.css" rel="stylesheet" type="text/css"/>
    </head> 
    <body>

        <?php
            include "funciones.php";


          ?>

        <div id="formulario">
        <form action="" method="POST" name="formulario">
            <h2>Ingrese una nueva categoria</h2>
            <div>
            <label for="nombre">Nombre:</label>
            <input id="nombre" type="text" placeholder="Nombre de la Categoria" name="txtNombre" required>
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
        $coincidencias = 0;
        $categorias = $dataBase->query("SELECT * FROM categorias");

        foreach ($categorias as $categoria){
            if ($categoria['nombre'] == $nombre) {
               $coincidencias = $coincidencias + 1;
            }
                            }
        if ($coincidencias < 1) {
            if (!empty($nombre)) {
                $dataBase->query("INSERT INTO categorias(nombre) VALUES('$nombre')");

        }
        }
        }



?>
    </div>
    </body>
</html>
