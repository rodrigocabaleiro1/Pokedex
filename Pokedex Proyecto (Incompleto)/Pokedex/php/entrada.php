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
	<title>Entrada Pokedex</title>
	<link rel="stylesheet" type="text/css" href="../css/entradas.css">
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
				<form role="search" method="GET" id="search_form" action="pokedex.php?search='search'" autocomplete="off" >
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
		                        echo '<a href="pokedex.php?Regiones='.$region['id_region'].'"><li>'.$region['nombre'].'</li></a>';
		                    }
		                    ?>
						</ul>
					</li>
					<li>Tipos
						<ul class="vertical_menu">
							<a href="pokedex.php"><li>Todos</li></a>
							<?php foreach ($tipologia as $tipo){
								if ($tipo['nombre'] != 'Nulo') {
									
		                        echo '<a href="pokedex.php?tipo='.$tipo['id_tipologia'].'"><li>'.$tipo['nombre'].'</li></a>';
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
    	<div class="criatura">
    		<div class="pokemon_container">
						
    	<?php foreach ($pokemones as $entrada){
    				$numeroEntrada += 0001;
                    if (isset($_GET['pokemon'])) {
                    	$busqueda = $_GET['pokemon'];
                    	if (strpos(strtolower($entrada['nombre']), strtolower($busqueda)) !== false){
							include "cargarEntrada.php";
                    	}
                    }
    				}
                    
                    ?>
                    
							
							<div class="typology">
								<div class="title_type">Debilidad X2</div>
								<div class="types">
									<div class="type">Agua</div>
									<div class="type">Agua</div>
									<div class="type">Agua</div>
								</div>
								<div class="title_type">Debilidad X4</div>
								<div class="types">
									<div class="type">Agua</div>
									<div class="type">Agua</div>
									<div class="type">Agua</div>
								</div>
							</div>
						</div>
        </div>
        <div class="return"><a href="pokedex.php">Volver a la pagina principal</a></div>
    </div>
    </main>
    <footer>
    	
    </footer>
</body>
</html>