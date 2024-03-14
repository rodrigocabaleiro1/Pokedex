<?php

?>

<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Pokemon</title>
        <link href="../css/formulario.css" rel="stylesheet" type="text/css"/>
    </head> 
    <body>

        <?php
            include "funciones.php";            
            $dataBase = conexion();
            $tipologia1 = $dataBase->query("SELECT * FROM tipologia");
            $tipologia2 = $dataBase->query("SELECT * FROM tipologia");
            $categorias = $dataBase->query("SELECT * FROM categorias");
            $sexos = $dataBase->query("SELECT * FROM sexo");
            $habilidades1 = $dataBase->query("SELECT * FROM habilidades");
            $habilidades2 = $dataBase->query("SELECT * FROM habilidades");
            $habilidadesOcultas = $dataBase->query("SELECT * FROM habilidades");
          ?>

        <div id="formulario">
        <form action="" method="POST">
            <h2>Ingrese un nuevo Pokemon</h2>
            <div>
            <label for="nombre">Nombre:</label>
            <input id="nombre" type="text" placeholder="Nombre" name="txtNombre" required>
            </div>
            <div>
            <label for="descripcion">Descripción:</label>
            <input id="descripcion" type="text" placeholder="Descripción" name="txtDescripcion" required>
            </div>

            
            <div>
            <label for="altura">Altura:</label>
            <input id="altura" step="any" type="number" placeholder="Altura metros" name="txtAltura" required>
            </div>

            <div>
            <label for="peso">Peso:</label>
            <input id="peso" step="any" type="number" placeholder="Peso kilogramos" name="txtPeso" required>
            </div>

            <div> 
                <label for="categoria">Categoria: </label>
                <select id="categoria" name="idCategoria" >
                    
                    <?php foreach ($categorias as $categoria){
                         echo '<option value="'.$categoria['id_categoria'].'">Pokemon '.$categoria['nombre'].'</option>';
                    }
                    ?>

                </select>
            </div>
            <div> 
                <label for="sexo">Sexo: </label>
                <select id="sexo" name="idSexo">
                    <?php foreach ($sexos as $sexo){
                         echo '<option value="'.$sexo['id_sexo'].'">'.$sexo['nombre'].'</option>';
                    }
                    ?>                
                </select>
            </div>

            <div> 
                <label for="habilidad1">Habilidad 1: </label>
                <select id="habilidad1" name="idHabilidad1">

                    <?php foreach ($habilidades1 as $habilidad){
                         echo '<option value="'.$habilidad['id_habilidad'].'">'.$habilidad['nombre'].'</option>';
                    }
                    ?>
                </select>
            </div>
            <div> 
                <label for="habilidad2">Habilidad 2: </label>
                <select id="habilidad2" name="idHabilidad2">

                    <?php foreach ($habilidades2 as $habilidad){
                         echo '<option value="'.$habilidad['id_habilidad'].'">'.$habilidad['nombre'].'</option>';
                    }
                    ?>
                </select>
            </div>
            <div> 
                <label for="habilidadOculta">Habilidad oculta: </label>
                <select id="habilidadOculta" name="idHabilidadOculta">

                    <?php foreach ($habilidadesOcultas as $habilidad){
                         echo '<option value="'.$habilidad['id_habilidad'].'">'.$habilidad['nombre'].'</option>';
                    }
                    ?>
                </select>
            </div>
            <div> 
                <label for="tipoPrimario">Tipo principal: </label>
                <select id="tipoPrimario" name="tipoPrimario">
                    <?php foreach ($tipologia1 as $tipo){
                         echo '<option value="'.$tipo['id_tipologia'].'">'.$tipo['nombre'].'</option>';
                    }
                    ?>
                    

                </select>
            </div>
            <div> 
                <label for="tipoSecundario">Tipo secundario: </label>
                <select id="tipoSecundario" name="tipoSecundario">
                    <?php foreach ($tipologia2 as $tipo){
                         echo '<option value="'.$tipo['id_tipologia'].'">'.$tipo['nombre'].'</option>';
                    }
                    ?>
                </select>
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
        $altura = floatval($_POST['txtAltura']);

        $peso = floatval($_POST['txtPeso']);
        $categoriaSeleccionada = intval($_POST['idCategoria']);
        $sexoSeleccionado = intval($_POST['idSexo']);
        $habilidad1Seleccionada = intval($_POST['idHabilidad1']);
        $habilidad2Seleccionada = intval($_POST['idHabilidad2']);
        $habilidadOcultaSeleccionada = intval($_POST['idHabilidadOculta']);
        $tipoSeleccionado = intval($_POST['tipoPrimario']);
        $tipoSecundarioSeleccionado = intval($_POST['tipoSecundario']);


            if (!empty($nombre)) {
                $dataBase->query("INSERT INTO pokemon(nombre, descripcion, altura, peso, categoria, sexo, habilidad1, habilidad2, habilidad_oculta, tipo_primario, tipo_secundario) VALUES('$nombre','$descripcion','$altura','$peso','$categoriaSeleccionada','$sexoSeleccionado','$habilidad1Seleccionada','$habilidad2Seleccionada','$habilidadOcultaSeleccionada','$tipoSeleccionado','$tipoSecundarioSeleccionado')");

        }
        }



?>
    </div>


    </body>
</html>