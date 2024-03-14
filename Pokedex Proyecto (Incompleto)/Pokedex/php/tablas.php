<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Tablas</title>
        <link href="../css/tabla.css" rel="stylesheet" type="text/css"/>
    </head> 
    <body>
            <?php
                include "funciones.php";            
                $dataBase = conexion();
                $pokemones = $dataBase->query("SELECT * FROM pokemon");
                $habilidades = $dataBase->query("SELECT * FROM habilidades");
                $tipologia = $dataBase->query("SELECT * FROM tipologia");
                $categorias = $dataBase->query("SELECT * FROM categorias");
                $sexos = $dataBase->query("SELECT * FROM sexo");
                $regiones = $dataBase->query("SELECT * FROM regiones");
                $resistencias = $dataBase->query("SELECT * FROM resistencias");
                $imagenes = $dataBase->query("SELECT * FROM imagenes");

          ?>

          <div class="contenedor">
            <table class=tabla>
            <caption>Pokemones</caption>
            <caption><div><a href="altaPokemon.php">Agregar Pokemon</a></div></caption>
            <thead>
                <tr>
                    <th>ID_POKEMON</th>
                    <th>NOMBRE</th>
                    <th>DESCRIPCION</th>
                    <th>HABILIDAD1</th>
                    <th>HABILIDAD2</th>
                    <th>HABILIDAD OCULTA</th>
                    <th>TIPO 1</th>
                    <th>TIPO 2</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($pokemones as $pokemon){
                        echo '<tr>';
                        echo '<td data-label="id_pokemon">'.$pokemon['id_pokemon'].'</td>';
                        echo '<td data-label="nombre">'.$pokemon['nombre'].'</td>';
                        echo '<td data-label="descripcion">'.$pokemon['descripcion'].'</td>';

                        echo '<td data-label="habilidad1">'.$pokemon['habilidad1'].'</td>';
                        echo '<td data-label="habilidad2">'.$pokemon['habilidad2'].'</td>';
                        echo '<td data-label="habilidad_oculta">'.$pokemon['habilidad_oculta'].'</td>';
                        echo '<td data-label="tipo_primario">'.$pokemon['tipo_primario'].'</td>';
                        echo '<td data-label="tipo_secundario">'.$pokemon['tipo_secundario'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>


        <div class="contenedor">
            <table class=tabla>
            <caption>Habilidades</caption>
            <caption><div><a href="altaHabilidad.php">Agregar Habilidad</a></div></caption>
            <thead>
                <tr>
                    <th>ID_HABILIDAD</th>
                    <th>NOMBRE</th>
                    <th>EFECTO</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($habilidades as $habilidad){
                        echo '<tr>';
                        echo '<td data-label="ID_HABILIDAD">'.$habilidad['id_habilidad'].'</td>';
                        echo '<td data-label="nombre">'.$habilidad['nombre'].'</td>';
                        echo '<td data-label="descripcion">'.$habilidad['descripcion'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>

        <div class="contenedor">
            <table class=tabla>
            <caption>Tipologia</caption>
            <caption><div><a href="altaTipo.php">Agregar Tipo</a></div></caption>
            <thead>
                <tr>
                    <th>ID_TIPO</th>
                    <th>NOMBRE</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($tipologia as $tipo){
                        echo '<tr>';
                        echo '<td data-label="id_tipologia">'.$tipo['id_tipologia'].'</td>';
                        echo '<td data-label="nombre">'.$tipo['nombre'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>
        
        <div class="contenedor">
            <table class=tabla>
            <caption>Categorias</caption>
            <caption><div><a href="altaCategoria.php">Agregar Categoria</a></div></caption>
            <thead>
                <tr>
                    <th>ID_CATEGORIA</th>
                    <th>NOMBRE</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($categorias as $tipo){
                        echo '<tr>';
                        echo '<td data-label="id_categoria">'.$tipo['id_categoria'].'</td>';
                        echo '<td data-label="nombre">'.$tipo['nombre'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>

        <div class="contenedor">
            <table class=tabla>
            <caption>Sexos</caption>
            <caption><div><a href="altaSexo">Agregar Sexo</a></div></caption>
            <thead>
                <tr>
                    <th>ID_SEXO</th>
                    <th>NOMBRE</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($sexos as $tipo){
                        echo '<tr>';
                        echo '<td data-label="id_tipologia">'.$tipo['id_sexo'].'</td>';
                        echo '<td data-label="nombre">'.$tipo['nombre'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>
        
        <div class="contenedor">
            <table class=tabla>
            <caption>Resistencias</caption>
            <caption><div><a href="altaResistencias.php">Agregar Resistencia</a></div></caption>
            <thead>
                <tr>
                    <th>ID_RESISTENCIA</th>
                    <th>TIPO DEFENSOR</th>
                    <th>TIPO OFENSOR</th>
                    <th>EFECTIVIDAD</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($resistencias as $resistencia){
                        echo '<tr>';
                        echo '<td data-label="id_categoria">'.$resistencia['id_resistencia'].'</td>';
                        echo '<td data-label="nombre">'.$resistencia['tipo_defensor'].'</td>';
                        echo '<td data-label="nombre">'.$resistencia['tipo_ofensor'].'</td>';
                        echo '<td data-label="nombre">'.$resistencia['efectividad'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>

        <div class="contenedor">
            <table class=tabla>
            <caption>Imagenes</caption>
            <caption><div><a href="altaImagenes.php">Agregar Imagenes</a></div></caption>
            <thead>
                <tr>
                    <th>ID_IMAGENES</th>
                    <th>POKEMON</th>
                    <th>IMAGEN 1</th>
                    <th>IMAGEN 2</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($imagenes as $imagen){
                        echo '<tr>';
                        echo '<td data-label="id_tipologia">'.$imagen['id_imagen'].'</td>';
                        echo '<td data-label="nombre">'.$imagen['pokemon'].'</td>';
                        echo '<td data-label="nombre">'.$imagen['imagen1url'].'</td>';
                        echo '<td data-label="nombre">'.$imagen['imagen2url'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>
        
        <div class="contenedor">
            <table class=tabla>
            <caption>Regiones</caption>
            <caption><div><a href="altaRegion.php">Agregar Region</a></div></caption>
            <thead>
                <tr>
                    <th>ID_REGION</th>
                    <th>NOMBRE</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($regiones as $region){
                        echo '<tr>';
                        echo '<td data-label="id_categoria">'.$region['id_region'].'</td>';
                        echo '<td data-label="nombre">'.$region['nombre'].'</td>';
                        echo '<td data-label="ACCIONES">';
                        echo '<div><a href="#">Eliminar</a></div>';
                        echo '</td>';
                        echo '</tr>';
                    }
                    ?>
            </tbody>
            </table>
        </div>

    </body>
</html>