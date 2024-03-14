<?php
// Aun no funciona el selector de regiones

	include "php/funciones.php"; 
	$dataBase = conexion();
	$pokemones = $dataBase->query("SELECT * FROM pokemon");
	$regiones = $dataBase->query("SELECT * FROM regiones");
	$pokemonNumber = 0;
	foreach ($pokemones as $pokemon){
			$pokemonNumber += 1;
}	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" type="text/css" href="css/estilos.css">
	<title>Pokedex</title>
</head>
<body><form method="Post" action="php/pokedex.php">
	<nav>
		<div class="border_nav">
			<div class="header_nav"></div>
			<div class="body_nav">
				<div class="pokeball_nav">
					<div class="line_pokeball">
					<input class="button_pokeball" type="submit" value="" name="btnPokeball"/>
					
					</div>
				</div>
			</div>
			<div class="footer_nav">
				<div class="elements_footer_nav">
				<label class="label_nav"> Nacional</label>
				<div class="arrow_left"></div>
				<label class="switch_nav">
					<input type="checkbox" class="switch_input" name="switch_input">
					<div class="switch_rail">
						<span class="switch_circle"></span>
					</div>
				</label>
				<div class="arrow_right"></div>
				
				<select name="regiones" id="regiones">
					<?php foreach ($regiones as $region){
		                        echo '<option value="'.$region['id_region'].'">'.$region['nombre'].'</option>';
		                    }
		                    ?>
				</select>
				</div>
				<div class="number_pokemons">Pokemones <?php echo $pokemonNumber;?></div>
			</div>
		</div>
		<div class="info_nav">
			<div class="github"><a href="#"></a></div>
			<div class="linkedin"><a href="#"></a></div>
			<div class="gmail"><a href="#"></a></div>
		</div>
	</nav>
	</form>
	<?php
    if (isset($_POST['btnPokeball'])) {
    	if ($_POST['switch_input'] == "on") {
	        $consulta ="?Regiones=".$_POST['regiones'];

    	}else{
    		$consulta ="";
    	}

        //}
        }



?>

</body>
</html>