<?php
	echo '<a href="entrada.php?pokemon='.$pokemon['nombre'].'">';
	echo '<div class="pokemon_container" id="'.$pokemon['nombre'].'">';
	echo '<div class="selector"></div>';
	echo '<div class="info_container">';

	echo '<div class="pokemon_icon"><img src="'.'#'.'"></div>';
	echo '<div class="pokemon_name" id="pokemon_name"><p>'.$pokemon['nombre'].'</p></div>';
	echo '<div class="number" id="number"><p>'.$numeroEntrada.'</p></div>';
	echo '<div class="pokemon_selected" id="pokemon_selected"><p>'.$pokemon['nombre'].'</p></div>';
	echo '</div>';
	echo '</div></a>';

?>