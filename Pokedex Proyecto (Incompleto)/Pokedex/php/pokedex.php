<?php
	include "funciones.php";            
	$dataBase = conexion();
	$pokemones = $dataBase->query("SELECT * FROM pokemon");
	$tipologia = $dataBase->query("SELECT * FROM tipologia");
	$regiones = $dataBase->query("SELECT * FROM regiones");
	$numeroEntrada = 0000;
	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/pokedex.css">
	<title>Pokedex</title>
</head>
<body>
	<header>
		<div class="container">
			<div class="pokeball_header">
				<div class="pokeball_top"></div>
				<div class="pokeball_center"></div>
				<div class="pokeball_bottom"></div>
				<div class="pokeball_circle"></div>
			</div>
			<div class="title_header">Pokédex</div>
			<div class="search">
				<form role="search" method="GET" id="search_form" action="?search='search'" autocomplete="off" >
  					<label for="s">
				    <i><div class="icon lupa"></div></i>
				  </label>
				  <input type="text" name="search" value="" placeholder="Buscar un Pokemon" class="" id="s" />
				</form>

			</div>
			
			<input type="checkbox" class="menu_input" id="menu_input">
			<label class="menu_bar" for="menu_input">
				<span class="menu_icon1"></span>
				<span class="menu_icon2"></span>
				<span class="menu_icon3"></span>
			</label>

			<nav id="menu" class="menu">
				<ul class="horizontal_menu">
					<li>Regiones
						<ul class="vertical_menu">
							<a href="pokedex.php"><li>Nacional</li></a>
							<?php foreach ($regiones as $region){
		                        echo '<a href="?Regiones='.$region['id_region'].'"><li>'.$region['nombre'].'</li></a>';
		                    }
		                    ?>
						</ul>
					</li>
					<li>Tipos
						<ul class="vertical_menu">
							<a href="pokedex.php"><li>Todos</li></a>
							<?php foreach ($tipologia as $tipo){
								if ($tipo['nombre'] != 'Nulo') {
									
		                        echo '<a href="?tipo='.$tipo['id_tipologia'].'"><li>'.$tipo['nombre'].'</li></a>';
								}
		                    }
		                    ?>
						</ul>
					</li>
					<li><a href="tablas.php">Consultar Tablas</a></li>					
				</ul>	
			</nav>

			</div>
    </header>

    <main id="main">
    	<div class="elements_container">
    		<div class="criatures">

    			<?php foreach ($pokemones as $pokemon){
    				$numeroEntrada += 0001;
    				if (isset($_GET['tipo'])) {
    					$tipoSeleccionado = $_GET['tipo'];
						if ($pokemon['tipo_primario'] == $tipoSeleccionado || $pokemon['tipo_secundario'] == $tipoSeleccionado) {
							include "cargarPokemons.php";

						}
                    }elseif (isset($_GET['search'])) {
                    	$busqueda = $_GET['search'];
                    	if (strpos(strtolower($pokemon['nombre']), strtolower($busqueda)) !== false || $pokemon['id_pokemon'] == $busqueda) {
                    		include "cargarPokemons.php";
                    	}
                    }else {
							include "cargarPokemons.php";
                    }
    				}
                    
                    ?>
    		</div>
    			<div class="separator_line"></div>
    	</div>
    </main>
    <footer>
    	
    </footer>
</body>
</html>

