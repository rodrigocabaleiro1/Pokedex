-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-03-2024 a las 02:29:08
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokedex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Semilla'),
(2, 'Lagartija'),
(3, 'Llama'),
(4, 'Tortuguita'),
(5, 'Tortuga'),
(6, 'Armazón'),
(7, 'Gusano'),
(8, 'Capullo'),
(9, 'Mariposa'),
(10, 'Oruga'),
(11, 'Abeja Veneno'),
(12, 'Pajarito'),
(13, 'Pájaro'),
(14, 'Ratón'),
(15, 'Pico'),
(16, 'Serpiente'),
(17, 'Cobra'),
(18, 'Pin Veneno'),
(19, 'Taladro'),
(20, 'Hada'),
(21, 'Zorro'),
(22, 'Globo'),
(23, 'Murciélago'),
(24, 'Hierbajo'),
(25, 'Flor'),
(26, 'Hongo'),
(27, 'Insecto'),
(28, 'Polilla Venenosa'),
(29, 'Topo'),
(30, 'Gato Araña'),
(31, 'Gato Fino'),
(32, 'Pato'),
(33, 'Mono Cerdo'),
(34, 'Perrito'),
(35, 'Leyenda'),
(36, 'Renacuajo'),
(37, 'Psi'),
(38, 'Superpoder'),
(39, 'Atrapamoscas'),
(40, 'Medusa'),
(41, 'Roca'),
(42, 'Megatón'),
(43, 'Caballo fuego'),
(44, 'Atontado'),
(45, 'Ermitaño'),
(46, 'Imán'),
(47, 'Pato salvaje'),
(48, 'Ave Gemela'),
(49, 'Ave Triple'),
(50, 'León Marino'),
(51, 'Lodo'),
(52, 'Bivalvo'),
(53, 'Gas'),
(54, 'Sombra'),
(55, 'Serpiente Roca'),
(56, 'Hipnosis'),
(57, 'Cangrejo'),
(58, 'Tenaza'),
(59, 'Bola'),
(60, 'Huevo'),
(61, 'Coco'),
(62, 'Solitario'),
(63, 'Apilahueso'),
(64, 'Patada'),
(65, 'Puñetazo'),
(66, 'Lametazo'),
(67, 'Gas Venenoso'),
(68, 'Punzante'),
(69, 'Enredadera'),
(70, 'Maternal'),
(71, 'Dragón'),
(72, 'Pez Color'),
(73, 'Estrella'),
(74, 'Misterioso'),
(75, 'Barrera'),
(76, 'Mantis'),
(77, 'Forma Humana'),
(78, 'Eléctrico'),
(79, 'Escupefuego'),
(80, 'Escarabajo'),
(81, 'Toro Bravo'),
(82, 'Pez'),
(83, 'Atrocidad'),
(84, 'Transporte'),
(85, 'Transformación'),
(86, 'Evolución'),
(87, 'Burbuja'),
(88, 'Relámpago'),
(89, 'Virtual'),
(90, 'Espiral'),
(91, 'Fósil'),
(92, 'Dormir'),
(93, 'Congelar'),
(94, 'Genético'),
(95, 'Nueva Especie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id_habilidad` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id_habilidad`, `nombre`, `descripcion`) VALUES
(1, 'Nula', 'No hay habilidad.'),
(2, 'Espesura', 'Aumenta la potencia de los movimientos de tipo planta del poseedor en un 50% cuando su salud esté igual o por debajo de 1/3 de sus PS máximos.'),
(3, 'Clorofila', 'Duplica la velocidad del poseedor durante el clima soleado.'),
(4, 'Mar llamas', 'Aumenta la potencia de los movimientos de tipo fuego del poseedor en un 50% cuando sus PS están igual o por debajo de 1/3 de sus PS máximos.'),
(5, 'Poder solar', 'Con el clima soleado activo aumenta el ataque especial del Pokémon poseedor en un 50%, pero el Pokémon pierde 1/8 de sus PS máximos al final de cada turno.'),
(6, 'Torrente', 'Aumenta la potencia de los movimientos de tipo agua del poseedor en un 50% cuando su salud este igual o por debajo de 1/3 de sus PS máximos.'),
(7, 'Cura lluvia', 'Restaura un 6,25% de los PS totales del usuario al final de cada turno cuando llueve.'),
(8, 'Polvo escudo', 'El polvo de escamas que lo envuelve lo protege de los efectos secundarios de los ataques recibidos.'),
(9, 'Fuga', 'Permite al poseedor escapar siempre de combates contra Pokémon salvajes.'),
(10, 'Mudar', 'Probabilidad del 30% de curar los efectos de estado sufridos por el poseedor.'),
(11, 'Ojo compuesto', 'Aumenta un 30% la precisión de los movimientos.'),
(12, 'Cromolente', 'Duplica el daño producido por movimientos poco efectivos contra el Pokémon oponente.'),
(13, 'Enjambre', 'Aumenta la potencia de los movimientos de tipo bicho del poseedor en un 50% cuando su salud esté igual o por debajo de 1/3 de sus PS máximos.'),
(14, 'Francotirador', 'Aumenta el daño de los golpes críticos en un 50%..'),
(15, 'Vista lince', 'Evita que baje la precisión del poseedor e ignora los aumentos de evasión del Pokémon oponente.'),
(16, 'Tumbos', 'Duplica la evasión cuando el poseedor esta confundido.'),
(17, 'Sacapecho', 'Evita que los oponentes bajen la defensa del poseedor.'),
(18, 'Agallas', 'Aumenta el ataque del poseedor en un 50% al sufrir un efecto de estado.'),
(19, 'Entusiasmo', 'Aumenta el ataque del poseedor en un 50%, pero baja su precisión en un 20%.'),
(20, 'Intimidación', 'Reduce en un nivel el ataque del oponente al entrar a combatir.'),
(21, 'Nerviosismo', 'Impide al rival hacer de su baya que tenga equipada.'),
(22, 'Electricidad estática', 'Probabilidad del 30% de paralizar al contacto.'),
(23, 'Pararrayos', 'Todos los ataque de tipo eléctrico son redirigidos al poseedor, anula el daño recibido y aumenta el ataque especial del poseedor en un nivel.'),
(24, 'Velo arena', 'Disminuye en un 20% la precisión de los movimientos usados contra el poseedor en presencia de la tormenta de arena.'),
(25, 'Ímpetu arena', 'Duplica la velocidad del poseedor con la tormenta de arena activa.'),
(26, 'Punto tóxico', 'Probabilidad del 30% de envenenar al contacto.'),
(27, 'Rivalidad', 'Aumenta la potencia de los movimientos en un 25% si el rival es del mismo sexo, pero disminuye en un 25% si es del sexo opuesto.'),
(28, 'Gran encanto', 'Probabilidad del 30% de enamorar al contacto si el atacante es del sexo opuesto.'),
(29, 'Muro mágico', 'Anula el daño indirecto.'),
(30, 'Compiescolta', 'Reduce el daño que sufren los aliados en un 25%.'),
(31, 'Absorbe fuego', 'Al recibir un ataque de tipo fuego, inmuniza el daño y potencia los ataques de tipo fuego del poseedor en un 50%.'),
(32, 'Sequía', 'Activa el clima soleado al entrar en el combate.'),
(33, 'Tenacidad', 'Aumenta el ataque especial del poseedor en dos niveles si el oponente reduce alguna de sus características.'),
(34, 'Cacheo', 'Permite ver el objeto equipado del oponente.'),
(35, 'Fuerza mental', 'Evita que el poseedor pueda amedrentarse.'),
(36, 'Allanamiento', 'Ataca sorteando las barreras o el sustituto del rival.'),
(37, 'Hedor', 'Probabilidad del 10% de amedrentar al rival al ser atacado con movimientos de daño directo.'),
(38, 'Efecto espora', 'Probabilidad del 30% de dormir, paralizar o envenenar al rival al ser atacado por movimientos de contacto.'),
(39, 'Piel seca', 'Durante el clima soleado el poseedor perdera un 12.5% de sus PS en cada turno y los recupera al estar el clima lluvioso activo o recibir un ataque de tipo agua. Los ataques de tipo fuego hacen mas daño de lo normal.'),
(40, 'Humedad', 'Evita que el poseedor sea afectado por movimientos explosivos.'),
(41, 'Piel milagro', 'Reduce un 50% la precisión de los movimientos de estado dirigidos al poseedor.'),
(42, 'Poder arena', 'Aumenta un 30% la potencia de los movimientos de tipo tierra, roca y acero cuando la tormenta de arena se encuentre activa.'),
(43, 'Trampa arena', 'Evita que el rival huya o sea intercambiado.'),
(44, 'Recogida', 'Puede recoger objetos que otros Pokémon hayan usado, o aquellos que encuentre en plena aventura.'),
(45, 'Experto', 'Multiplica por 1.5 la potencia de todos los movimientos con potencia de 60 o inferior.'),
(46, 'Flexibilidad', 'Vuelve al poseedor inmune a la parálisis.'),
(47, 'Aclimatación', 'Anula los efectos del clima activo mientras el poseedor se encuentre en combate.'),
(48, 'Nado rápido', 'Duplica la velocidad del poseedor durante el clima lluvioso.'),
(49, 'Espíritu vital', 'Evita que el poseedor pueda dormirse.'),
(50, 'Irascible', 'Cuando el poseedor recibe un golpe critico, sube su ataque al máximo.'),
(51, 'Competitivo', 'Aumenta el ataque del poseedor en dos niveles cuando el oponente reduce alguna de sus estadísticas.'),
(52, 'Justiciero', 'Aumenta el ataque en un nivel si el poseedor recibe un ataque de tipo siniestro.'),
(53, 'Absorbe agua', 'Vuelve al poseedor inmune a movimientos de tipo agua y recupera un 25% de sus PS máximos al recibir un movimiento de este tipo.'),
(54, 'Sincronía', 'Al ser afectado por un problema de estado, el oponente también se vera afectado el mismo.'),
(55, 'Indefenso', 'Todos los movimientos utilizados contra el poseedor nunca fallan.'),
(56, 'Impasible', 'Aumenta un nivel la velocidad del poseedor cada vez que sea amedrentado.'),
(57, 'Gula', 'Hace que el poseedor consuma las bayas que se consumen al tener un 25% de los PS al tener un 50% de sus PS o menos.'),
(58, 'Cuerpo puro', 'Evita que bajen las estadísticas del poseedor a causa de un movimiento del oponente.'),
(59, 'Viscosecreción', 'Los ataques de absorción de PS hieren al rival en vez del poseedor de la habilidad.'),
(60, 'Cabeza roca', 'Evita el daño de movimientos que hieren al usuario.'),
(61, 'Robustez', 'El Pokémon no puede debilitarse de un solo golpe cuando tiene los PS al máximo. También evita los movimientos fulminantes.'),
(62, 'Cuerpo llama', 'Probabilidad del 30% de quemar al contacto.'),
(63, 'Despiste', 'Evita que el Pokémon sea atraído o provocado.'),
(64, 'Ritmo propio', 'Evita los efectos del estado confuso e Intimidación.'),
(65, 'Regeneración', 'Permite recuperar 1/3 de los PS del poseedor al volver a su Poké Ball en combate.'),
(66, 'Imán', 'Evita que los Pokémon enemigos de tipo acero sean intercambiados o huyan del combate. Fuera de combate aumenta la probabilidad de encontrarse con Pokémon Salvajes de tipo acero hasta el 50% si el poseedor lidera el equipo.'),
(67, 'Cálculo final', 'Aumenta la potencia de los movimientos del poseedor en un 30% si ataca en ultimo lugar.'),
(68, 'Madrugar', 'Reduce a la mitad los turnos que el poseedor permanece dormido.'),
(69, 'Sebo', 'El daño de los movimientos de tipo hielo y tipo fuego dirigidos al poseedor se ve reducido a la mitad.'),
(70, 'Hidratación', 'Cura los problemas de estado del poseedor al final de cada turno durante el clima lluvioso.'),
(71, 'Gélido', 'Evita el daño por el granizo y recupera un 6,25% de los PS totales del poseedor al final de cada turno, mientras dure este clima.'),
(72, 'Viscosidad', 'Evita el robo de objetos. Fuera de combate, si el poseedor lidera el equipo hace que los Pokémon pique mas a menudo al pescar.'),
(73, 'Toque tóxico', 'Aumenta la probabilidad de que los movimientos de contacto del poseedor envenenen al objetivo en un 30%.'),
(74, 'Caparazón', 'Evita que el poseedor reciba golpes críticos.'),
(75, 'Encadenado', 'Permite al poseedor golpear el numero máximo de veces al hacer uso de movimientos que golpean al objetivo varias veces en un mismo turno.'),
(76, 'Funda', 'Evita el daño de la tormenta de arena y granizo. Vuelve al poseedor inmune a la habilidad efecto espora y a los movimientos basados en polvos.'),
(77, 'Levitación', 'Proporciona al Pokémon poseedor inmunidad a los ataques de tipo tierra.'),
(78, 'Cuerpo maldito', 'Probabilidad del 30% de anular el uso de movimientos que causen daño directo contra el poseedor de esta habilidad durante 4 turnos.'),
(79, 'Armadura frágil', 'Reduce la defensa un nivel y aumenta la velocidad en dos niveles cada vez que el poseedor es golpeado por movimientos físicos.'),
(80, 'Insomnio', 'Evita que el poseedor pueda quedarse dormido.'),
(81, 'Alerta', 'Revela el movimiento mas potente del oponente.'),
(82, 'Corte fuerte', 'Evita que los oponentes bajen el ataque del poseedor.'),
(83, 'Potencia bruta', 'Aumenta un 30% la potencia de los movimientos que puedan desencadenar un efecto secundario, pero anula dichos efectos.'),
(84, 'Insonorizar', 'Hace al poseedor inmune a los efectos de movimientos basados en el sonido.'),
(85, 'Detonación', 'Reduce un 25% de los PS totales del oponente si el poseedor es debilitado por un ataque de contacto.'),
(86, 'Cosecha', 'Probabilidad del 50% de recuperar una baya equipada que haya sido usada en combate al final de cada turno. En el clima soleado esta probabilidad aumenta al 100%.'),
(87, 'Armadura batalla', 'Impide que el poseedor reciba golpes críticos.'),
(88, 'Audaz', 'Aumenta en un 20% la potencia de los movimientos que causan daño de retroceso en el usuario.'),
(89, 'Liviano', 'Duplica la velocidad del poseedor cuando pierde o consume un objeto equipado.'),
(90, 'Puño férreo', 'Aumenta un 20% la potencia de los movimientos basados en puños.'),
(91, 'Gas reactivo', 'Anula las habilidades de los Pokémon que estén en el campo de batalla mientras el poseedor también se encuentre en este.'),
(92, 'Cura natural', 'Cura los problemas de estado del poseedor al cambiar de Pokémon.'),
(93, 'Dicha', 'Duplica la probabilidad de que se den efectos secundarios al utilizar distintos movimientos.'),
(94, 'Alma cura', 'Probabilidad del 30% de curar los problemas de estado de un compañero al final de cada turno.'),
(95, 'Defensa hoja', 'Previene problemas de estado presentes con el clima soleado.'),
(96, 'Intrépido', 'Permite al poseedor golpear con movimientos de tipo normal y lucha a Pokémon de tipo fantasma.'),
(97, 'Velo agua', 'Evita que el poseedor pueda ser quemado.'),
(98, 'Iluminación', 'El poseedor es inmune a reducciones de su precisión. Fuera de combate, si el poseedor lidera el equipo, duplica la probabilidad de encontrarse con Pokémon salvajes.'),
(99, 'Filtro', 'Reduce 1/4 el daño recibido de los movimientos super eficaces usados contra el poseedor.'),
(100, 'Rompemoldes', 'Ignora los efectos de habilidades del oponente que impidan algún daño o efecto del los movimientos del poseedor.'),
(101, 'Autoestima', 'Aumenta el ataque del poseedor en un nivel al debilitar a un Pokémon mediante daño directo.'),
(102, 'Cobardía', 'Aumenta la velocidad en un nivel cuando el poseedor es golpeado por movimientos de tipo bicho, siniestro o fantasma, o se vea afectado por intimidación.'),
(103, 'Impostor', 'El poseedor se transforma en el Pokémon oponente al salir a combatir.'),
(104, 'Adaptable', 'Aumenta la bonificación del STAB de 1,5 a 2.'),
(105, 'Anticipación', 'Cuando el poseedor entra al combate detecta si el Pokémon rival tiene ataques super efectivos.'),
(106, 'Absorbe electricidad', 'Otorga inmunidad ante movimientos de tipo eléctrico y hace que el poseedor recupere hasta un 25% de sus PS máximos cada vez que sea alcanzado por un movimiento de este tipo que cause daño.'),
(107, 'Pies rápidos', 'Duplica la velocidad del poseedor en un 50% si sufre algún problema de estado.'),
(108, 'Calco', 'Copia la habilidad del oponente.'),
(109, 'Descarga', 'Aumenta el ataque o ataque especial en función de la estadística de defensa mas baja del oponente.'),
(110, 'Presión', 'Los movimientos del enemigo consumen un PP extra si son dirigidos al poseedor de la habilidad.'),
(111, 'Inmunidad', 'Impide que el poseedor sea envenenado.'),
(112, 'Manto níveo', 'Disminuye en un 20% la precisión de los movimientos del oponente, cuando el poseedor esta en presencia de granizo. También, hace al poseedor inmune a recibir daño del granizo.'),
(113, 'Escama especial', 'Aumenta la defensa del poseedor en un 50% si sufre algún problema de estado.'),
(114, 'Multiescamas', 'Cuando el poseedor tiene sus PS al máximo, se reduce el daño recibido del ataque rival a la mitad.'),
(115, 'Ignorante', 'Ignora los cambios en las estadísticas de cualquier rival al que se enfrente el poseedor a la hora de calcular daño.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int NOT NULL,
  `pokemon` int NOT NULL,
  `imagen1url` varchar(500) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `imagen2url` varchar(500) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id_pokemon` int NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `altura` float NOT NULL,
  `peso` float NOT NULL,
  `categoria` int NOT NULL,
  `sexo` int NOT NULL,
  `habilidad1` int NOT NULL,
  `habilidad2` int NOT NULL,
  `habilidad_oculta` int NOT NULL,
  `tipo_primario` int NOT NULL,
  `tipo_secundario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id_pokemon`, `nombre`, `descripcion`, `altura`, `peso`, `categoria`, `sexo`, `habilidad1`, `habilidad2`, `habilidad_oculta`, `tipo_primario`, `tipo_secundario`) VALUES
(1, 'Bulbasaur', 'Lleva un bulbo en el lomo desde que nace. A medida que el Pokémon crece, el bulbo también va haciéndose más grande.', 0.7, 6.9, 1, 1, 2, 1, 3, 16, 18),
(2, 'Ivysaur', 'Cuanta más luz solar recibe, más aumenta su fuerza y más se desarrolla el capullo que tiene en el lomo.', 1, 13, 1, 1, 2, 1, 3, 16, 18),
(3, 'Venusaur', 'Llena su cuerpo de energía con los rayos solares que capta al extender los enormes pétalos de su flor.', 2, 100, 1, 1, 2, 1, 3, 16, 18),
(4, 'Charmander', 'La llama de su cola indica su fuerza vital. Si está débil, la llama arderá más tenue.', 0.6, 8.5, 2, 1, 4, 1, 5, 6, 56),
(5, 'Charmeleon', 'Por naturaleza, se acalora con facilidad: siempre está buscando adversarios. Solo se calma cuando gana.', 1.1, 19, 3, 1, 4, 1, 5, 6, 56),
(6, 'Charizard', 'Cuando se enfurece de verdad, la llama de la punta de su cola se vuelve de color azul claro.', 1.7, 90.5, 3, 1, 4, 1, 5, 6, 15),
(7, 'Squirtle', 'Su caparazón, blando al nacer, enseguida se vuelve lo suficientemente elástico como para contrarrestar la presión ejercida por un dedo.', 0.5, 9, 4, 1, 6, 1, 7, 20, 56),
(8, 'Wartortle', 'Suele ocultarse en el agua para cazar a sus presas. Al nadar rápidamente, mueve las orejas para estabilizarse.', 1, 22.5, 5, 1, 6, 1, 7, 20, 56),
(9, 'Blastoise', 'Aumenta de peso deliberadamente para contrarrestar la fuerza de los chorros de agua que dispara.', 1.6, 85.5, 6, 1, 6, 1, 7, 20, 56),
(10, 'Caterpie', 'Para protegerse, despide un hedor horrible por las antenas con el que repele a sus enemigos.', 0.3, 2.9, 7, 1, 8, 1, 9, 1, 56),
(11, 'Metapod', 'Como en este estado solo puede endurecer su coraza, permanece inmóvil a la espera de evolucionar.', 0.7, 9.9, 8, 1, 10, 1, 1, 1, 56),
(12, 'Butterfree', 'Adora el néctar de las flores. Una pequeña cantidad de polen le basta para localizar prados floridos.', 1.1, 32, 9, 1, 11, 1, 12, 1, 15),
(13, 'Weedle', 'El aguijón de la cabeza es muy puntiagudo. Se alimenta de hojas oculto en la espesura de bosques y praderas.', 0.3, 3.2, 10, 1, 8, 1, 9, 1, 18),
(14, 'Kakuna', 'Aunque es casi incapaz de moverse, en caso de sentirse amenazado puede envenenar a los enemigos con su aguijón.', 0.6, 10, 8, 1, 10, 1, 1, 1, 18),
(15, 'Beedrill', 'Tiene tres aguijones venenosos, dos en las patas anteriores y uno en la parte baja del abdomen, con los que ataca a sus enemigos una y otra vez.', 1, 29.5, 11, 1, 13, 1, 14, 1, 18),
(16, 'Pidgey', 'Su docilidad es tal que suelen defenderse levantando arena en lugar de contraatacar.', 0.3, 1.8, 12, 1, 15, 16, 17, 9, 15),
(17, 'Pidgeotto', 'Su extraordinaria vitalidad y resistencia le permiten cubrir grandes distancias del territorio que habita en busca de presas.', 1.1, 30, 13, 1, 15, 16, 17, 9, 15),
(18, 'Pidgeot', 'Este Pokémon vuela a una velocidad de 2 mach en busca de presas. Sus grandes garras son armas muy peligrosas.', 1.5, 39.5, 13, 1, 15, 16, 17, 9, 15),
(19, 'Rattata', 'Es propenso a hincar los incisivos en cualquier cosa que se le ponga por delante. Si se ve alguno, seguramente haya cuarenta cerca.', 0.3, 3.5, 14, 1, 9, 18, 19, 9, 56),
(20, 'Raticate', 'Gracias a las pequeñas membranas de las patas traseras, puede nadar por los ríos para capturar presas.', 0.7, 18.5, 14, 1, 9, 18, 19, 9, 56),
(21, 'Spearow', 'A la hora de proteger su territorio, compensa su incapacidad para volar a gran altura con una increíble velocidad.', 0.3, 2, 12, 1, 15, 1, 14, 9, 15),
(22, 'Fearow', 'Este Pokémon ha existido desde tiempos remotos. Al menor atisbo de peligro, alza el vuelo y huye.', 1.2, 38, 15, 1, 15, 1, 14, 9, 15),
(23, 'Ekans', 'Puede desencajar la mandíbula libremente para engullir grandes presas, aunque esto le dificulte el movimiento por pesar demasiado.', 2, 6.9, 16, 1, 20, 10, 21, 18, 56),
(24, 'Arbok', 'El dibujo que tiene en el vientre parece una cara terrorífica. Los rivales más débiles salen huyendo nada más verlo.', 3.5, 6.9, 17, 1, 20, 10, 21, 18, 56),
(25, 'Pikachu', 'Cuando se enfada, este Pokémon descarga la energía que almacena en el interior de las bolsas de las mejillas.', 0.4, 6, 14, 1, 22, 1, 23, 13, 56),
(26, 'Raichu', 'Su cola actúa como toma de tierra y descarga electricidad al suelo, lo que le protege de los calambrazos.', 0.8, 30, 14, 1, 22, 1, 23, 13, 56),
(27, 'Sandshrew', 'Excava madrigueras profundas en las que vive. Cuando lo ataca algún enemigo, se hace una bola y aguanta pacientemente sus embates.', 0.6, 12, 14, 1, 24, 1, 25, 8, 56),
(28, 'Sandslash', 'Corre de un lado a otro a toda velocidad al tiempo que ataca hábilmente con las púas que tiene en la espalda y con sus afiladas garras.', 1, 29.5, 14, 1, 24, 1, 25, 8, 56),
(29, 'Nidoran♀', 'Posee un olfato más fino que los Nidoran♂. Usa los bigotes para percibir la dirección del viento y buscar comida a sotavento de sus depredadores.', 0.4, 7, 18, 3, 26, 27, 19, 18, 56),
(30, 'Nidorina', 'Se cree que el cuerno de la frente se le ha atrofiado para evitar herir a sus crías al alimentarlas.', 0.8, 20, 18, 3, 26, 27, 19, 18, 56),
(31, 'Nidoqueen', 'Su defensa destaca sobre la capacidad ofensiva. Usa las escamas del cuerpo como una coraza para proteger a su prole de cualquier ataque.', 1.3, 60, 19, 3, 26, 27, 83, 18, 8),
(32, 'Nidoran♂', 'Mantiene sus grandes orejas levantadas, siempre alerta. Si advierte peligro, ataca inoculando una potente toxina con su cuerno frontal.', 0.5, 9, 18, 2, 26, 27, 19, 18, 56),
(33, 'Nidorino', 'Dondequiera que va, parte rocas con su cuerno, más duro que un diamante, en busca de una Piedra Lunar.', 0.9, 19.5, 18, 2, 26, 27, 19, 18, 56),
(34, 'Nidoking', 'Una vez que se desboca, no hay quien lo pare. Solo se calma ante Nidoqueen, su compañera de toda la vida.', 1.4, 62, 19, 2, 26, 27, 83, 18, 8),
(35, 'Clefairy', 'En las noches de luna llena, Clefairy de diversos lugares se reúnen para bailar bajo su luz, la cual los hace flotar.', 0.6, 7.5, 20, 1, 28, 29, 30, 5, 56),
(36, 'Clefable', 'Se dice que este Pokémon emparentado con las hadas vive en zonas tranquilas en lo profundo de las montañas, ya que odia que lo vean.', 1.3, 40, 1, 1, 28, 29, 115, 5, 56),
(37, 'Vulpix', 'Si lo ataca un enemigo más fuerte que él, finge estar herido para confundirlo y huir en cuanto baja la guardia.', 0.6, 9.9, 21, 1, 31, 1, 32, 6, 56),
(38, 'Ninetales', 'Cuentan algunas leyendas que cada una de sus nueve colas posee su propio y único poder sobrenatural.', 1.1, 19.9, 21, 1, 31, 1, 32, 6, 56),
(39, 'Jigglypuff', 'Cuando le tiemblan sus redondos y adorables ojos, entona una melodía agradable y misteriosa con la que duerme a sus enemigos.', 0.5, 5.5, 22, 1, 28, 33, 30, 9, 5),
(40, 'Wigglytuff', 'Tiene un pelaje muy fino. Se recomienda no enfadarlo, o se inflará y golpeará con todo su cuerpo.', 1, 12, 22, 1, 28, 33, 34, 9, 5),
(41, 'Zubat', 'Emite ondas ultrasónicas por la boca para escrutar el entorno, lo que le permite volar con pericia por cuevas angostas.', 0.8, 7.5, 23, 1, 35, 1, 36, 18, 15),
(42, 'Golbat', 'Le encanta chuparles la sangre a los seres vivos. En ocasiones comparte la preciada colecta con otros congéneres hambrientos.', 1.6, 55, 23, 1, 35, 1, 36, 18, 15),
(43, 'Oddish', 'Su nombre científico es Oddium viandantis. Se dice que, cuando cae la noche, puede llegar a desplazarse hasta 300 m con sus dos raíces.', 0.5, 5.4, 24, 1, 3, 1, 9, 16, 18),
(44, 'Gloom', 'El fluido que le cae lentamente de la boca no es saliva, sino una especie de néctar que utiliza para atraer a sus presas.', 0.8, 8.6, 24, 1, 3, 1, 37, 16, 18),
(45, 'Vileplume', 'El capullo florece de golpe con un chasquido, tras lo cual comienza a desprender un polen alergénico y venenoso.', 1.2, 18.6, 25, 1, 3, 1, 38, 16, 18),
(46, 'Paras', 'Escarba en el suelo para extraer nutrientes de las raíces de los árboles, que las setas del lomo absorben después casi por completo.', 0.3, 5.4, 26, 1, 38, 39, 40, 1, 16),
(47, 'Parasect', 'Tras largo tiempo absorbiendo la energía del huésped, la seta parásita del lomo es la que parece controlar la voluntad de este Pokémon.', 1, 29.5, 26, 1, 38, 39, 40, 1, 16),
(48, 'Venonat', 'Rezuma veneno por todo su cuerpo. De noche, atrapa y come pequeños Pokémon insecto atraídos por la luz.', 1, 30, 27, 1, 11, 12, 9, 1, 18),
(49, 'Venomoth', 'Tiene las alas cubiertas de escamas. Cada vez que las bate, esparce un polvillo sumamente venenoso.', 1.5, 12.5, 28, 1, 8, 12, 41, 1, 18),
(50, 'Diglett', 'Vive 1 m por debajo del suelo, donde se alimenta de raíces. A veces también aparece en la superficie.', 0.2, 0.8, 29, 1, 24, 43, 42, 8, 56),
(51, 'Dugtrio', 'Sus tres cabezas suben y bajan para remover la tierra cercana y facilitar así la excavación.', 0.7, 33.3, 29, 1, 24, 43, 42, 8, 56),
(52, 'Meowth', 'Durante el día, se dedica a dormir. De noche, vigila su territorio con un brillo en los ojos.', 0.4, 4.2, 30, 1, 44, 45, 21, 9, 56),
(53, 'Persian', 'Aunque es muy admirado por el pelaje, es difícil de entrenar como mascota porque enseguida suelta arañazos.', 1, 32, 31, 1, 46, 45, 21, 9, 56),
(54, 'Psyduck', 'Padece continuamente dolores de cabeza. Cuando son muy fuertes, empieza a usar misteriosos poderes.', 0.8, 19.6, 32, 1, 40, 47, 48, 20, 56),
(55, 'Golduck', 'Cuando nada a toda velocidad usando sus largas extremidades palmeadas, su frente comienza a brillar.', 1.7, 76.6, 32, 1, 40, 47, 48, 20, 56),
(56, 'Mankey', 'Vive en grupos en las copas de los árboles. Si pierde de vista a su manada, se siente solo y se enfada.', 0.5, 28, 33, 1, 49, 50, 51, 14, 56),
(57, 'Primeape', 'Se pone furioso si nota que alguien lo está mirando. Persigue a cualquiera que establezca contacto visual con él.', 1, 32, 33, 1, 49, 50, 51, 14, 56),
(58, 'Growlithe', 'De naturaleza valiente y honrada, se enfrenta sin miedo a enemigos más grandes y fuertes.', 0.7, 19, 34, 1, 20, 31, 52, 6, 56),
(59, 'Arcanine', 'Cuenta un antiguo pergamino que la gente se quedaba fascinada al verlo correr por las praderas.', 1.9, 155, 35, 1, 20, 31, 52, 6, 56),
(60, 'Poliwag', 'La espiral que tiene en el vientre son sus vísceras, visibles a través de la piel. Cuando acaba de comer, se ven de manera aún más nítida.', 0.6, 12.4, 36, 1, 53, 40, 48, 20, 56),
(61, 'Poliwhirl', 'Aunque puede vivir en tierra firme gracias a que sus extremidades inferiores se han desarrollado, por algún motivo prefiere el medio acuático.', 1, 20, 36, 1, 53, 40, 48, 20, 56),
(62, 'Poliwrath', 'Aunque puede nadar de forma hábil y enérgica utilizando todos sus músculos, por algún motivo prefiere vivir en tierra firme.', 1.3, 54, 36, 1, 53, 40, 48, 20, 14),
(63, 'Abra', 'Es capaz de usar sus poderes psíquicos aun estando dormido. Al parecer, el contenido del sueño influye en sus facultades.', 0.9, 19.5, 37, 1, 54, 35, 29, 10, 56),
(64, 'Kadabra', 'Duerme suspendido en el aire gracias a sus poderes psíquicos. La cola, de una flexibilidad extraordinaria, hace las veces de almohada.', 1.3, 56.5, 37, 1, 54, 35, 29, 10, 56),
(65, 'Alakazam', 'Posee una capacidad intelectual fuera de lo común que le permite recordar todo lo sucedido desde el instante de su nacimiento.', 1.5, 48, 37, 1, 54, 35, 29, 10, 56),
(66, 'Machop', 'Es una masa de músculos y, pese a su pequeño tamaño, tiene fuerza de sobra para levantar en brazos a 100 personas.', 0.8, 19.5, 38, 1, 18, 55, 56, 14, 56),
(67, 'Machoke', 'Su musculoso cuerpo es tan fuerte que usa un cinto antifuerza para controlar sus movimientos.', 1.5, 70.5, 38, 1, 18, 55, 56, 14, 56),
(68, 'Machamp', 'Mueve sus cuatro brazos a tal velocidad que resultan imposibles de ver. Puede asestar hasta mil puñetazos en dos segundos.', 1.6, 130, 38, 1, 18, 55, 56, 14, 56),
(69, 'Bellsprout', 'Si detecta algún movimiento a su alrededor, sea cuando sea, reacciona enseguida extendiendo sus finas lianas en esa dirección.', 0.7, 4, 25, 1, 3, 1, 57, 16, 18),
(70, 'Weepinbell', 'Rezuma un fluido neutralizante que impide que su propio ácido lo disuelva.', 1, 6.4, 39, 1, 3, 1, 57, 16, 18),
(71, 'Victreebel', 'Deja que sus presas se le acerquen a la boca, atraídas por el aroma a néctar. Una vez dentro, las disuelve con su ácido.', 1.7, 15.5, 39, 1, 3, 1, 57, 16, 18),
(72, 'Tentacool', 'Cuando baja la marea, se pueden encontrar Tentacool deshidratados junto a la orilla.', 0.9, 45.5, 40, 1, 58, 59, 7, 20, 18),
(73, 'Tentacruel', 'En muy raras ocasiones, cuando se produce una aparición masiva de Tentacruel, los Pokémon pez de los alrededores se esfuman sin dejar rastro.', 1.6, 55, 40, 1, 58, 59, 7, 20, 18),
(74, 'Geodude', 'En reposo parece una roca normal, pero responde agitando los puños con agresividad si se pisa por error.', 0.4, 20, 41, 1, 60, 61, 24, 19, 8),
(75, 'Graveler', 'Camina muy lentamente, por lo que se desplaza rodando, sin importarle lo que pueda haber en su camino.', 1, 105, 41, 1, 60, 61, 24, 19, 8),
(76, 'Golem', 'Está cubierto por un duro caparazón formado por losas de piedra. Lo muda una vez al año para aumentar de tamaño.', 1.4, 300, 42, 1, 60, 61, 24, 19, 8),
(77, 'Ponyta', 'Apenas una hora después de nacer, ya le crecen la cola y la crin de fuego, que le confieren un aspecto magnífico.', 1, 30, 43, 1, 9, 31, 62, 6, 56),
(78, 'Rapidash', 'Su crin de fuego centellea cuando galopa como una flecha a velocidades que llegan a alcanzar los 240 km/h.', 1.7, 95, 43, 1, 9, 31, 62, 6, 56),
(79, 'Slowpoke', 'Increíblemente lento y torpe. Tarda cinco segundos en sentir dolor si lo atacan.', 1.2, 36, 44, 1, 63, 64, 65, 20, 10),
(80, 'Slowbro', 'Según parece, cuando Slowpoke fue a pescar al mar, un Shellder le mordió la cola y así evolucionó a Slowbro.', 1.6, 78.5, 45, 1, 63, 64, 65, 20, 10),
(81, 'Magnemite', 'Las unidades laterales crean ondas electromagnéticas que contrarrestan la gravedad y le permiten flotar.', 0.3, 6, 46, 4, 66, 61, 67, 13, 11),
(82, 'Magneton', 'Tres Magnemite se enlazan mediante una intensa fuerza magnética. Provoca un fuerte pitido en los oídos a quien se le acerque.', 1, 60, 46, 4, 66, 61, 67, 13, 11),
(83, 'Farfetch’d', 'No puede vivir sin el puerro que lleva, así que lo protege de sus atacantes con todas sus fuerzas.', 0.8, 15, 47, 1, 15, 35, 51, 9, 15),
(84, 'Doduo', 'Sus cabezas gemelas comparten la misma información genética y combaten juntas al unísono.', 1.4, 39.2, 48, 1, 9, 68, 16, 9, 15),
(85, 'Dodrio', 'Ahora cuenta con tres corazones y tres pares de pulmones. No alcanza las velocidades de Doduo, pero es capaz de correr durante más tiempo.', 1.8, 85.2, 49, 1, 9, 68, 16, 9, 15),
(86, 'Seel', 'La protuberancia que tiene en la cabeza es tan dura que la usa para abrirse paso a cabezazos por el hielo de los icebergs.', 1.1, 90, 50, 1, 69, 70, 71, 20, 56),
(87, 'Dewgong', 'Duerme en aguas poco profundas durante el día y, por la noche, cuando baja la temperatura del agua, nada en busca de comida.', 1.7, 120, 1, 1, 69, 70, 71, 20, 17),
(88, 'Grimer', 'Formados a partir de lodo, los Grimer se juntan en lugares sucios para aumentar el número de gérmenes de su cuerpo.', 0.9, 30, 51, 1, 37, 72, 73, 18, 56),
(89, 'Muk', 'Está cubierto por un repugnante lodo. Es tan tóxico que hasta su rastro es venenoso.', 1.2, 30, 51, 1, 37, 72, 73, 18, 56),
(90, 'Shellder', 'Está metido en una concha más dura que el diamante, pero tiene un cuerpo muy blando.', 0.3, 4, 52, 1, 74, 75, 76, 20, 56),
(91, 'Cloyster', 'A los Cloyster que viven en las fuertes corrientes marinas les crecen largas y afiladas púas en la concha.', 1.5, 132.5, 52, 1, 74, 75, 76, 20, 17),
(92, 'Gastly', 'Su estrategia consiste en envolver al rival con su cuerpo gaseoso y envenenarlo a través de la piel.', 1.3, 0.1, 53, 1, 77, 1, 1, 7, 18),
(93, 'Haunter', 'Le gusta acechar en la oscuridad y tocarles el hombro a sus víctimas con su mano gaseosa. Estas se quedan temblando para siempre.', 1.6, 0.1, 53, 1, 77, 1, 1, 7, 18),
(94, 'Gengar', 'Para quitarle la vida a su presa, se desliza en su sombra y espera su oportunidad en silencio.', 1.5, 40.5, 54, 1, 78, 1, 1, 7, 18),
(95, 'Onix', 'Al abrirse paso bajo tierra, va absorbiendo todo lo que encuentra. Eso hace que su cuerpo sea así de sólido.', 8.8, 210, 55, 1, 60, 61, 79, 19, 8),
(96, 'Drowzee', 'Recuerda todos los sueños que engulle. Raramente come sueños de adultos porque los de los niños están más ricos.', 1, 32.4, 56, 1, 80, 81, 35, 10, 56),
(97, 'Hypno', 'Cuando mira al enemigo, usa diversos poderes psíquicos como la hipnosis.', 1.6, 75.6, 56, 1, 80, 81, 35, 10, 56),
(98, 'Krabby', 'Es fácil encontrarlo cerca del mar. Las largas pinzas que tiene vuelven a crecer si se las quitan de su sitio.', 0.4, 6.5, 57, 1, 82, 74, 83, 20, 56),
(99, 'Kingler', 'La pinza mayor posee una fuerza devastadora, pero es tan pesada que le cuesta usarla con precisión.', 1.3, 60, 58, 1, 82, 74, 83, 20, 56),
(100, 'Voltorb', 'Se mueve rodando. Si el terreno es irregular, una chispa provocada por algún bache lo hará explotar.', 0.5, 10.4, 59, 4, 84, 22, 85, 13, 56),
(101, 'Electrode', 'Cuanta más energía almacena, mayor velocidad alcanza, aunque aumenta también el riesgo de que explote.', 1.2, 66.6, 59, 4, 84, 22, 85, 13, 56),
(102, 'Exeggcute', 'Si alguien confunde a una de sus cabezas con un huevo y la toca, se reagrupa con las otras para atacar todas juntas.', 0.4, 2.5, 60, 1, 3, 1, 86, 16, 10),
(103, 'Exeggutor', 'Se lo llama la Selva Andante. Cada fruto tiene una cara distinta y voluntad propia.', 2, 120, 61, 1, 3, 1, 86, 16, 10),
(104, 'Cubone', 'Cuando llora al acordarse de su madre fallecida, su llanto resuena en el cráneo que lleva en la cabeza.', 0.4, 6.5, 62, 1, 60, 23, 87, 8, 56),
(105, 'Marowak', 'Ha evolucionado tras fortalecerse y superar su pena. Ahora lucha con arrojo blandiendo su hueso a modo de arma.', 1, 45, 63, 1, 60, 23, 87, 8, 56),
(106, 'Hitmonlee', 'Endurece los músculos de las plantas de los pies en el momento en el que impactan contra su rival para potenciar al máximo sus patadas.', 1.5, 49.8, 64, 2, 46, 88, 89, 14, 56),
(107, 'Hitmonchan', 'Acorrala a sus enemigos con combinaciones de puñetazos con ambos puños, para luego darles el golpe de gracia con un directo a 500 km/h.', 1.4, 50.2, 65, 2, 15, 90, 35, 14, 56),
(108, 'Lickitung', 'Si sus lametones no se tratan a tiempo, su saliva pegajosa y urticante puede provocar picores persistentes.', 1.2, 65.5, 66, 1, 63, 64, 47, 9, 56),
(109, 'Koffing', 'Su cuerpo, con forma de globo y poco grosor, encierra gases muy tóxicos que pueden ocasionar explosiones espontáneas de gran magnitud.', 0.6, 1, 67, 1, 77, 91, 37, 18, 56),
(110, 'Weezing', 'Diluir sus venenosos gases internos lo máximo posible permite fabricar perfumes de alta gama.', 1.2, 9.5, 67, 1, 77, 91, 37, 18, 56),
(111, 'Rhyhorn', 'Puede controlar un territorio de hasta 10 km de radio, pero, cuando se pone a correr, parece olvidársele dónde empieza y dónde acaba.', 1, 115, 68, 1, 23, 60, 88, 8, 19),
(112, 'Rhydon', 'Hace chocar el cuerno con el de sus congéneres para afilarlo. Es capaz de horadar diamantes en bruto con él.', 1.9, 120, 19, 1, 23, 60, 88, 8, 19),
(113, 'Chansey', 'Un generoso Pokémon que pone huevos muy nutritivos y se los da a personas o Pokémon heridos.', 1.1, 34.6, 60, 3, 92, 93, 94, 9, 56),
(114, 'Tangela', 'Sus lianas no dejan de crecer aunque se le desprendan. Aún se desconoce qué aspecto tiene sin ellas.', 1, 35, 69, 1, 3, 95, 65, 16, 56),
(115, 'Kangaskhan', 'Aunque lleve una cría en el marsupio, su juego de pies no pierde ligereza. Abruma al rival con ráfagas de ágiles puñetazos.', 2.2, 80, 70, 3, 68, 96, 35, 9, 56),
(116, 'Horsea', 'Si es atacado por un enemigo, por muy grande que sea, nada veloz a un lugar seguro gracias a su fornida aleta dorsal.', 0.4, 8, 71, 1, 48, 14, 40, 20, 56),
(117, 'Seadra', 'En esta especie, es el macho quien se ocupa de cuidar a las crías, a las que defiende con sus púas venenosas de cualquiera que se les acerque.', 1.2, 25, 71, 1, 26, 14, 40, 20, 56),
(118, 'Goldeen', 'Sus aletas pectorales, caudal y dorsal ondean gráciles en el agua. Por eso se le llama el Bailarín Acuático.', 0.6, 15, 72, 1, 48, 97, 23, 20, 56),
(119, 'Seaking', 'En otoño gana algo de peso para atraer a posibles parejas y se cubre de llamativos colores.', 1.3, 39, 72, 1, 48, 97, 23, 20, 56),
(121, 'Staryu', 'A finales de verano, se pueden ver grupos de Staryu en la orilla de la playa sincronizando el brillo de sus núcleos a ritmo regular.', 0.8, 34.5, 73, 4, 98, 92, 67, 20, 56),
(122, 'Starmie', 'Su órgano central, conocido como núcleo, brilla con los colores del arcoíris cuando se dispone a liberar sus potentes poderes psíquicos.', 1.1, 80, 74, 4, 98, 92, 67, 20, 10),
(123, 'Mr. Mime', 'Un experto de la pantomima capaz de crear paredes invisibles pero sólidas solo con sus gestos.', 1.3, 54.5, 75, 1, 84, 99, 45, 10, 5),
(124, 'Scyther', 'Avanza por la hierba con sus afiladas guadañas, más rápido de lo que el ojo humano puede percibir.', 1.5, 56, 76, 1, 13, 45, 56, 1, 15),
(125, 'Jynx', 'En cierta parte de Galar se conocía a Jynx como la Reina del Hielo y se reverenciaba con cierto temor.', 1.4, 40.6, 77, 3, 63, 81, 39, 17, 10),
(126, 'Electabuzz', 'Su cuerpo descarga electricidad constantemente, por lo que eriza el cabello a cualquiera que se le acerque.', 1.1, 30, 78, 1, 22, 1, 49, 13, 56),
(127, 'Magmar', 'Fue descubierto junto al cráter de un volcán. Escupe llamaradas y su temperatura corporal alcanza los 1200 ºC.', 1.3, 44.5, 79, 1, 62, 1, 49, 6, 56),
(128, 'Pinsir', 'Los Pinsir se juzgan entre ellos por la robustez de la cornamenta. Cuanto más imponente sea, más agradará a sus congéneres del sexo opuesto.', 1.5, 55, 80, 1, 82, 100, 101, 1, 56),
(129, 'Tauros', 'Cuando ve a un enemigo, se fustiga con las colas y carga ferozmente contra él.', 1.4, 88.4, 81, 2, 20, 50, 83, 9, 56),
(130, 'Magikarp', 'Un Pokémon desvalido y patético. A veces es capaz de saltar alto, pero rara vez más de 2 m.', 0.9, 10, 82, 1, 48, 1, 102, 20, 56),
(131, 'Gyarados', 'Cuando aparece, monta en cólera. No deja de estar furioso hasta que lo destruye todo.', 6.5, 235, 83, 1, 20, 1, 101, 20, 15),
(132, 'Lapras', 'Surca los mares transportando gente sobre el lomo. Al parecer, a veces entona un melodioso canto si está de buen humor.', 2.5, 220, 84, 1, 53, 74, 70, 20, 17),
(133, 'Ditto', 'Su habilidad para transformarse es perfecta, pero, si se le hace reír, perderá la fuerza y no podrá mantenerse transformado.', 0.3, 4, 85, 4, 46, 1, 103, 9, 56),
(134, 'Eevee', 'Es capaz de evolucionar de muchas maneras para adaptarse sin problemas a cualquier medio.', 0.3, 6.5, 86, 1, 9, 104, 105, 9, 56),
(135, 'Vaporeon', 'Vive cerca del agua. Su cola termina en una aleta parecida a la de un pez, por lo que hay gente que lo confunde con una sirena.', 1, 29, 87, 1, 53, 1, 70, 20, 56),
(136, 'Jolteon', 'Concentra la débil actividad eléctrica de sus células para lanzar dañinas descargas.', 0.8, 24.5, 88, 1, 106, 1, 107, 13, 56),
(137, 'Flareon', 'Calienta el aire que inhala en su saca de fuego y lo expulsa a 1700 ºC.', 0.9, 25, 3, 1, 31, 1, 18, 6, 56),
(138, 'Porygon', 'Un Pokémon artificial que no respira, por lo que se le supone la capacidad de desenvolverse sin problemas en cualquier entorno.', 0.8, 36.5, 89, 1, 108, 109, 67, 9, 56),
(139, 'Omanyte', 'Varios ejemplares han escapado o bien han sido liberados tras su restauración, lo que comienza a suscitar una serie de problemas.', 0.4, 7.5, 90, 1, 48, 74, 79, 19, 20),
(140, 'Omastar', 'Se cree que se extinguió porque el excesivo tamaño y peso de su concha le impedían moverse con rapidez para capturar presas.', 1, 35, 90, 1, 48, 74, 79, 19, 20),
(141, 'Kabuto', 'Un Pokémon casi extinto. Cada tres días, muda el caparazón, que se va endureciendo de forma progresiva.', 0.5, 11.5, 6, 1, 48, 87, 79, 19, 20),
(142, 'Kabutops', 'Despedaza a las presas que atrapa para sorber sus fluidos y deja los restos para que otros Pokémon den buena cuenta de ellos.', 1.3, 40.5, 6, 1, 48, 87, 79, 19, 20),
(143, 'Aerodactyl', 'Un feroz Pokémon de la época prehistórica al que no bastan todos los avances tecnológicos actuales para regenerar a la perfección.', 1.8, 59, 91, 1, 60, 110, 21, 19, 15),
(144, 'Snorlax', 'Este Pokémon es un glotón que lo único que hace aparte de comer es dormir. Puede ingerir hasta 400 kg de comida en un solo día.', 2.1, 460, 92, 1, 69, 111, 57, 9, 56),
(145, 'Articuno', 'Una de las aves legendarias. Es capaz de generar ventiscas congelando la humedad del aire.', 1.7, 55.4, 93, 4, 110, 1, 112, 17, 15),
(146, 'Zapdos', 'Una de las aves legendarias. Según dicen, vive en los nubarrones y controla los rayos a su antojo.', 1.6, 52.6, 78, 4, 110, 1, 22, 13, 15),
(147, 'Moltres', 'Una de las aves legendarias. Dicen que su presencia anuncia la llegada de la primavera.', 2, 60, 3, 4, 110, 1, 62, 6, 15),
(148, 'Dratini', 'Durante la etapa de crecimiento, muda muchas veces de piel y se protege mediante una cascada.', 1.8, 3.3, 71, 1, 10, 1, 113, 4, 56),
(150, 'Dragonair', 'Dicen que, cuando su cuerpo desprende un aura, el tiempo empieza a cambiar inmediatamente.', 4, 16.5, 71, 1, 10, 1, 113, 4, 56),
(151, 'Dragonite', 'Dicen que viven en una isla en algún lugar del océano que solo ellos habitan.', 2.2, 210, 71, 1, 35, 1, 114, 4, 15),
(152, 'Mewtwo', 'Su ADN es casi el mismo que el de Mew. Sin embargo, su tamaño y carácter son muy diferentes.', 2, 122, 94, 4, 110, 1, 21, 10, 56),
(153, 'Mew', 'Si se observa a través de un microscopio, puede distinguirse cuán corto, fino y delicado es el pelaje de este Pokémon.', 0.4, 4, 95, 4, 54, 1, 1, 10, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id_region` int NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_region`, `nombre`) VALUES
(1, 'Kanto'),
(2, 'Johto'),
(3, 'Hoenn'),
(4, 'Sinnoh'),
(5, 'Unova'),
(6, 'Kalos'),
(7, 'Alola'),
(8, 'Galar'),
(9, 'Paldea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resistencias`
--

CREATE TABLE `resistencias` (
  `id_resistencia` int NOT NULL,
  `tipo_defensor` int NOT NULL,
  `tipo_ofensor` int NOT NULL,
  `efectividad` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id_sexo`, `nombre`) VALUES
(1, '♀ ♂'),
(2, '♂'),
(3, '♀'),
(4, 'Desconocido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipologia`
--

CREATE TABLE `tipologia` (
  `id_tipologia` int NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tipologia`
--

INSERT INTO `tipologia` (`id_tipologia`, `nombre`) VALUES
(1, 'Bicho'),
(4, 'Dragón'),
(5, 'Hada'),
(6, 'Fuego'),
(7, 'Fantasma'),
(8, 'Tierra'),
(9, 'Normal'),
(10, 'Psíquico'),
(11, 'Acero'),
(12, 'Siniestro'),
(13, 'Eléctrico'),
(14, 'Lucha'),
(15, 'Volador'),
(16, 'Planta'),
(17, 'Hielo'),
(18, 'Veneno'),
(19, 'Roca'),
(20, 'Agua'),
(56, 'Nulo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id_habilidad`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_pokemon`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `resistencias`
--
ALTER TABLE `resistencias`
  ADD PRIMARY KEY (`id_resistencia`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- Indices de la tabla `tipologia`
--
ALTER TABLE `tipologia`
  ADD PRIMARY KEY (`id_tipologia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id_habilidad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id_pokemon` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id_region` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `resistencias`
--
ALTER TABLE `resistencias`
  MODIFY `id_resistencia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id_sexo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipologia`
--
ALTER TABLE `tipologia`
  MODIFY `id_tipologia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
