<div class="pokemon_container">
	
<?php

			$tipologia = $dataBase->query("SELECT * FROM tipologia");
            $categorias = $dataBase->query("SELECT * FROM categorias");
            $sexos = $dataBase->query("SELECT * FROM sexo");
            $habilidades = $dataBase->query("SELECT * FROM habilidades");

            $tipoPrimario = " ";
            $tipoSecundario = " ";
            $categoria = " ";
            $sexo = " ";

            $habilidad1 = " ";
            $habilidad1Descripcion = " ";

            $habilidad2 = " ";
            $habilidad2Descripcion = " ";

            $habilidadOculta = " ";
            $habilidadOcultaDescripcion = " ";

            $imagen01 = "#";
            $imagen02 = "#";


            foreach($categorias as $elemento){
            	if ($elemento['id_categoria'] == $entrada['categoria']) {
            		$categoria = $elemento['nombre'];
            	}
            }

            foreach($sexos as $elemento){
            	if ($elemento['id_sexo'] == $entrada['sexo']) {
            		$sexo = $elemento['nombre'];
            	}
            }



             foreach ($tipologia as $tipo){
                    if ($tipo['id_tipologia'] == $entrada['tipo_primario']) {
                     	$tipoPrimario = $tipo['nombre'];
                     }
                     if ($tipo['id_tipologia'] == $entrada['tipo_secundario'] AND $tipo['id_tipologia'] != 56) {
                     	$tipoSecundario = $tipo['nombre'];
                     } 
                    }



            foreach ($habilidades as $elemento){
                    if ($elemento['id_habilidad'] == $entrada['habilidad1']) {
                     	$habilidad1 = $elemento['nombre'];
                     	$habilidad1Descripcion = $elemento['descripcion'];
                     }
                     if ($elemento['id_habilidad'] == $entrada['habilidad2'] AND $elemento['id_habilidad'] != 1) {
                     	$habilidad2 = $elemento['nombre'];
                     	$habilidad2Descripcion = $elemento['descripcion'];
                     }
                     if ($elemento['id_habilidad'] == $entrada['habilidad_oculta'] AND $elemento['id_habilidad'] != 1) {
                     	$habilidadOculta = $elemento['nombre'];
                     	$habilidadOcultaDescripcion = $elemento['descripcion'];
                     }
                    }
                    

                    		echo '<div class="title">';
							echo '<div class="pokemon_name" id="pokemon_name"><p>'.$entrada['nombre'].'</p></div>';
							echo '<div class="number" id="number"><p>N.° '.$numeroEntrada.'</p></div>';
							echo '</div>';
							echo '<div class="main_body">';
							echo '<div class="pokemon_icon"><img src="'.$imagen01.'"></div>';
							echo '<div class="img2">';
							echo '<div class="pokemon_icon2"><img src="'.$imagen02.'"></div>';
							echo '</div>';
							echo '<div class="info_container">';
							echo '<div class="description">'.$entrada['descripcion'].'</div>';
							echo '<div class="info">';
							echo '<div class="info_name">Altura</div>';
							echo '<div class="info_description">'.$entrada['altura'].'</div>';
							echo '<div class="info_name">Peso</div>';
							echo '<div class="info_description">'.$entrada['peso'].'</div>';
							echo '<div class="info_name">Sexo</div>';
							echo '<div class="info_description">'.$sexo.'</div>';
							echo '<div class="info_name">Categoria</div>';
							echo '<div class="info_description">'.$categoria.'</div>';
							echo '<div class="info_name">Habilidad</div>';
							echo '<div class="info_description">'.$habilidad1;
							echo '<input type="checkbox" class="description_input" id="description_input">';

							echo '<label class="description_label" for="description_input">?</label>';
							echo '<div class="description_info" id="description_info">';
							echo '<div class="title_description">Informacion sobre la Habilidad</div><label class="info_description_label" for="description_input"><p>X cerrar</p></label>';
							echo '<div class="name_description">'.$habilidad1.'</div>';
							echo '<div class="description_description">'.$habilidad1Descripcion.'</div>';
							echo '</div>';
							echo '</div>';
							if ($habilidad2 != " ") {
								echo '<div class="info_description">'.$habilidad2;
								echo '<input type="checkbox" class="description_input" id="description_input2">';

								echo '<label class="description_label" for="description_input2">?</label>';
								echo '<div class="description_info" id="description_info">';
								echo '<div class="title_description">Informacion sobre la Habilidad</div><label class="info_description_label" for="description_input2"><p>X cerrar</p></label>';
								echo '<div class="name_description">'.$habilidad2.'</div>';
								echo '<div class="description_description">'.$habilidad2Descripcion.'</div>';
								echo '</div>';
								echo '</div>';
							}

							if ($habilidadOculta != " ") {
								echo '<div class="info_name">Habilidad Oculta</div>';
								echo '<div class="info_description">'.$habilidadOculta.'';
								echo '<input type="checkbox" class="description_input" id="description_input3">';
								echo '<label class="description_label" for="description_input3">?</label>';
								echo '<div class="description_info" id="description_info">';
								echo '<div class="title_description">Informacion sobre la Habilidad</div><label class="info_description_label" for="description_input3"><p>X cerrar</p></label>';
								echo '<div class="name_description">'.$habilidadOculta.'</div>';
								echo '<div class="description_description">'.$habilidadOcultaDescripcion.'</div>';
								echo '</div>';
								echo '</div>';
							}

							echo '</div>';
							echo '</div>';

							echo '<div class="typology">';
							echo '<div class="title_type">Tipo</div>';
							echo '<div class="types">';
							echo '<div class="type">'.$tipoPrimario.'</div>';
							if ($tipoSecundario != " ") {
								echo '<div class="type">'.$tipoSecundario.'</div>';
							}
							
							echo '</div>';
							echo '</div>';

?>