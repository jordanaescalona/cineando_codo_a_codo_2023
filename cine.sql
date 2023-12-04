-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2023 a las 22:19:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idGenero`, `tipo`) VALUES
(1, 'Catástrofe'),
(2, 'Acción'),
(3, 'Aventura'),
(4, 'Drama'),
(5, 'Terror'),
(6, 'Documental'),
(7, 'Comedia'),
(8, 'Musical'),
(9, 'Ciencia Ficción'),
(10, 'Fantasía'),
(11, 'Suspenso'),
(12, 'Infantil'),
(13, 'Cristiana'),
(14, 'Romance');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `idPelicula` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` int(10) NOT NULL,
  `duracion` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`idPelicula`, `nombre`, `genero`, `duracion`, `director`, `descripcion`, `imagen`) VALUES
(1, 'Titanic', 14, '195 minutos', 'James Cameron y Jon Landau', 'La trama, una epopeya romántica,​​ relata la relación de Jack Dawson y Rose DeWitt Bukater, dos jóvenes que se conocen y se enamoran a bordo del Titanic', 'https://imgdb.net/storage/uploads/6afb6b881a18c446087903a21674dfa98beb2676c09603d0be3c37cd3d9d9271.jpeg'),
(2, 'El señor de los anillos: La Comunidad del Anillo', 10, '178 minutos', 'Peter Jackson', 'Un grupo de personajes se embarca en una épica aventura para destruir un anillo maligno y salvar a la Tierra Media.', 'https://imgdb.net/storage/uploads/34e6bfc5f3a7053d00adeb0aabbf11317fee82e503826c825c70d80e41814046.jpg'),
(3, 'Inception', 9, '148 minutos', 'Christopher Nolan', 'Un ladrón especializado en robar secretos corporativos utiliza tecnología para entrar en los sueños de otras personas.', 'https://imgdb.net/storage/uploads/1d0502d7ea5d0bb047eb83a1d4d5112695a28547c67efba486d8c8b08e538212.jpg'),
(4, 'Forrest Gump', 4, '142 minutos', 'Robert Zemeckis', 'La vida de un hombre con discapacidades intelectuales que accidentalmente participa en varios eventos históricos importantes.', 'https://imgdb.net/storage/uploads/6035f891dc542c7606d71e399f1204aaf5b54b842ad97cecf45c01989ccd3ca8.jpg'),
(5, 'Pulp Fiction', 11, '154 minutos ', 'Quentin Tarantino', 'Una historia entrelazada de criminales, boxeadores, y gánsteres en Los Ángeles.', 'https://imgdb.net/storage/uploads/a52d9e6cf1e2f468ce354a90927ad6f6598558ff4e61327f9a5392e09b347cc1.jpg'),
(6, 'La La Land', 8, '128 minutos ', 'Damien Chazelle', 'Una historia de amor entre un pianista de jazz y una aspirante a actriz en Los Ángeles.', 'https://imgdb.net/storage/uploads/4228232eeacccd351938eb486a1106a39cd346b026fe93691517eabb42d79af3.jpg'),
(7, 'Jurassic Park', 3, '127 minutos ', 'Steven Spielberg', 'Un parque temático con dinosaurios reales se sale de control, poniendo en peligro a los visitantes.', 'https://imgdb.net/storage/uploads/e2573a1863a724f385f6f9020ef69f67e34d4b981ad7689a4863484c8f6c564b.jpg'),
(8, 'The Shawshank Redemption', 4, '142 minutos ', 'Frank Darabont', 'La historia de un hombre inocente encarcelado que encuentra esperanza y amistad en la prisión.', 'https://imgdb.net/storage/uploads/33df5aab9ceb12a908dad5a97aedbb00f88a2a6da5bd779995a852d3fa13f33f.jpg'),
(9, 'The Dark Knight', 2, '152 minutos ', 'Christopher Nolan', 'Batman se enfrenta a un nuevo y formidable enemigo, el Joker, en esta película de superhéroes.', 'https://imgdb.net/storage/uploads/6cf0617b14e81076b171b7843e290e6c83a875cd2e2f1fce3c404f44d2fd0ab3.jpg'),
(10, 'Avatar', 9, '162 minutos ', 'James Cameron', 'En un planeta lejano, un exmarine parapléjico se embarca en una misión para comprender y proteger la cultura local.', 'https://imgdb.net/storage/uploads/ad94595076a65ec422fc1e68f432db2ae7f2e0a01b075fdcdd6c2c635a4b36f8.jpg'),
(11, 'The Godfather', 11, '175 minutos ', 'Francis Ford Coppola', 'La historia de la familia Corleone y su participación en el crimen organizado en Nueva York.', 'https://imgdb.net/storage/uploads/1a0a97cc3924649485a5939d50316e37b9ce55670806f5fe40a3fd0a6cab524e.jpg'),
(12, 'E.T. the Extra-Terrestrial', 9, '115 minutos ', 'Steven Spielberg', 'Un niño encuentra y protege a un alienígena perdido que quiere regresar a su hogar.', 'https://imgdb.net/storage/uploads/565e6dd7b971f4e1c7dbcb0dbdb78600ad82f753c4cf1f23a3ef7ca7ac659f3a.jpg'),
(13, 'The Matrix', 9, '136 minutos ', 'Lana y Lilly Wachowski', 'Un programador descubre la verdad sobre la realidad y se une a una rebelión contra las máquinas.', 'https://imgdb.net/storage/uploads/0c06b0aefe41439e1ca3168c0210f787f7c76d0e9be09328f786f7e3230c919a.jpg'),
(14, 'The Social Network', 4, '120 minutos ', 'David Fincher', 'La creación y la posterior disputa sobre la red social Facebook.', 'https://imgdb.net/storage/uploads/e37594bc7aed0dab5b915d951a3ae614978859f42a1fa0b84307da7d06c6b406.jpg'),
(15, 'The Great Gatsby', 4, '143 minutos ', 'Baz Luhrmann', 'Basada en la novela clásica de F. Scott Fitzgerald, sigue la vida del enigmático Jay Gatsby.', 'https://imgdb.net/storage/uploads/e0535e6f14768becff40d941b49b6ac5ff2876b9af459fe4e13d318e874161bc.jpg'),
(16, 'The Silence of the Lambs', 11, '118 minutos ', 'Jonathan Demme', 'Una joven agente del FBI busca la ayuda de un brillante pero peligroso psiquiatra para atrapar a un asesino en serie.', 'https://imgdb.net/storage/uploads/38b3ad10483b8eb77a76def89e4a10f19fccc18dc571cc3d84b821385177d7db.jpg'),
(17, 'Interstellar', 9, '169 minutos ', 'Christopher Nolan', 'Un grupo de astronautas se embarca en un viaje interestelar para encontrar un nuevo hogar para la humanidad.', 'https://imgdb.net/storage/uploads/9518193ce8133829b0e7dfac35f0a91e8b64e56947fa6f228da827b98879aef6.jpg'),
(18, 'The Martian', 9, '144 minutos ', 'Ridley Scott', 'Un astronauta queda atrapado en Marte y lucha por sobrevivir mientras la NASA intenta rescatarlo.', 'https://imgdb.net/storage/uploads/9ed414cb5c4c3b84c9949d9df77649b99d500d7c46c860d6246e7788a3ef1157.jpg'),
(19, 'Inglourious Basterds', 1, '153 minutos ', 'Quentin Tarantino', 'Una película que sigue a un grupo de soldados judíos que buscan venganza durante la Segunda Guerra Mundial.', 'https://imgdb.net/storage/uploads/29b7ffdbc34c8fdc52ac0e51ce3417ca3bc94557febc38e900ecd5c045e0aa1c.jpg'),
(20, 'The Green Mile', 4, '189 minutos ', 'Frank Darabont', 'La historia de un guardia de prisión y su experiencia con un prisionero con habilidades extraordinarias.', 'https://imgdb.net/storage/uploads/ab3146604d888ffd10b719bf025b487d35d21a3168c41cc422bf54a497aa5aa0.jpeg'),
(21, 'The Departed', 11, '151 minutos ', 'Martin Scorsese', 'Un thriller sobre infiltración en la policía y el crimen organizado en Boston.', 'https://imgdb.net/storage/uploads/6d45a62533412424032ca4fae84c85bcb80ac27e8f0cebdc115bcf4809fa966b.jpg'),
(22, 'Black Panther', 2, '134 minutos ', 'Ryan Coogler', 'T\'Challa, el rey de Wakanda, debe proteger su nación y su legado como Black Panther.', 'https://imgdb.net/storage/uploads/c4ea1fe8bc2ec87d5b64b15ccbbab5b480d47bf036ff2b93980ecf3d7543efaf.jpg'),
(23, 'The Revenant', 3, '156 minutos ', 'Alejandro González Iñárritu', 'Un cazador herido lucha por sobrevivir en un entorno hostil y busca venganza en la frontera estadounidense.', 'https://imgdb.net/storage/uploads/13efc952a798d917c49a941dba4d7c1150241e5ad8d0ca3f0d42de3469a838fc.jpeg'),
(24, 'Gladiator', 2, '155 minutos ', 'Ridley Scott', 'La historia de un general romano traicionado que busca venganza en el Coliseo.', 'https://imgdb.net/storage/uploads/d50512497a999a17d4c2c35a2bdbe5de0744dab9f4d69fd35c29f35ccb51cef3.jpg'),
(25, 'The Avengers', 2, '143 minutos ', 'Joss Whedon', 'Superhéroes icónicos de Marvel se unen para salvar al mundo de una amenaza intergaláctica.', 'https://imgdb.net/storage/uploads/50d2386dd26c65a4db317b387b183e165c7abf034cda038589bc8ea23a28e31c.jpeg'),
(26, 'The Grand Budapest Hotel', 7, '99 minutos ', 'Wes Anderson', 'Las extravagantes y cómicas aventuras de un conserje y su protegido en un elegante hotel europeo.', 'https://imgdb.net/storage/uploads/41fb92e6fe647e6f8e4170474760732196cc72e8779bf7a4b0fbe89dddc0dfbf.jpg'),
(41, 'nombre de prueba', 10, '190 minutos', 'director de prueba', 'descripcion de prueba', 'https://imgdb.net/storage/uploads/7ca79316c451b48cf5a5835b43386b46c47924a346c26cb690239052157c3c20.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas_vista`
--

CREATE TABLE `peliculas_vista` (
  `idVista` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `pelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas_vista`
--

INSERT INTO `peliculas_vista` (`idVista`, `usuario`, `pelicula`) VALUES
(1, 24, 10),
(2, 28, 12),
(3, 14, 2),
(4, 20, 4),
(5, 19, 24),
(6, 17, 3),
(7, 25, 17),
(8, 4, 20),
(9, 7, 15),
(10, 13, 26),
(11, 27, 26),
(12, 32, 9),
(13, 18, 5),
(14, 12, 7),
(15, 11, 17),
(16, 10, 6),
(17, 9, 1),
(18, 8, 13),
(19, 15, 14),
(20, 29, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `administrador` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `usuario`, `nombre`, `apellido`, `email`, `password`, `administrador`) VALUES
(4, 'usuario', 'Lucia', 'Martinez', 'lucia@gmail.com', '123456', 0),
(5, 'freitesmi', 'Miguel', 'Freites', 'miguel@gmail.com', '1234567', 0),
(6, 'martinLu', 'Martin', 'Lucena', 'martin@gmail.com', '12345678', 0),
(7, 'admin', 'Luis ', 'Marcano', 'luis@gmail.com', '123456', 1),
(8, 'mimen', 'Miguel', 'Mendez', 'mimen@gmail.com', '87654321', 0),
(9, 'zambrake', 'Keila', 'Zambrano', 'keila@gmail.com', '7654321', 0),
(10, 'juanado', 'Juana ', 'Acevedo', 'juana@gmail.com', '2345678', 0),
(11, 'hugogon', 'Hugo', 'Gonzalez', 'hugo@gmail.com', '123456', 1),
(12, 'javical', 'Javier', 'Calderon', 'javier@gmail.com', '345678', 0),
(13, 'macelino', 'Marcelo', 'Perdomo', 'marcelo@gmail.com', '3456789', 0),
(14, 'carraslidi', 'Lidia ', 'Carrasco', 'lidia@gmail.com', '987654', 0),
(15, 'mirandi', 'Eglee', 'Miranda', 'eglee@gmail.com', '9876543', 0),
(16, 'monmi', 'Miriam', 'Monzon', 'miriam@gmail.com', '875421', 0),
(17, 'fabioyen', 'Fabiola', 'Irigoyen', 'fabiola@gmail.com', '986532', 0),
(18, 'lennisga', 'Lennis', 'Gallardo', 'lennis@gmail.com', '235689', 0),
(19, 'espinaro', 'Robert ', 'Espinosa', 'robert@gmail.com', '124578', 0),
(20, 'castilloedu', 'Eduar', 'Castillo', 'eduar@gmail.com', '951753', 0),
(21, 'velazyos', 'Yosmira', 'Valazquez', 'yosmi@gmail.com', '357951', 0),
(22, 'valevale', 'Valentina', 'Quintero', 'valentina@gmail.com', '159753', 0),
(23, 'palana', 'Ana ', 'Palacios', 'ana@gmail.com', '753987', 0),
(24, 'antonorober', 'Roberto', 'Antonio', 'roberto@gmail.com', '564789', 0),
(25, 'fanico', 'Fanirma', 'Colina', 'fanirma@gmail.com', '987321', 0),
(26, 'treluis', 'Luisa', 'Trejo', 'luisa@gmail.com', '56987', 0),
(27, 'mabesan', 'Mabel', 'Santander', 'mabel@gmail.com', '8527964', 0),
(28, 'carlosu', 'Carlos', 'Suarez', 'carlos@gmail.com', '9875429', 0),
(29, 'octamar', 'Octavio', 'Martinez', 'octavio@gmail.com', '8576431', 0),
(30, 'jorgegu', 'Jorge', 'Gutierrez', 'jorge@gmail.com', '56478214', 0),
(31, 'rebegui', 'Rebeca', 'Guillen', 'rebeca@gmail.com', '4578963', 0),
(32, 'inecita', 'Juani', 'Rigaut', 'juani@gmail.com', '9587463', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`idPelicula`),
  ADD KEY `genero` (`genero`);

--
-- Indices de la tabla `peliculas_vista`
--
ALTER TABLE `peliculas_vista`
  ADD PRIMARY KEY (`idVista`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `pelicula` (`pelicula`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `idPelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `peliculas_vista`
--
ALTER TABLE `peliculas_vista`
  MODIFY `idVista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `genero` (`idGenero`);

--
-- Filtros para la tabla `peliculas_vista`
--
ALTER TABLE `peliculas_vista`
  ADD CONSTRAINT `peliculas_vista_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `peliculas_vista_ibfk_2` FOREIGN KEY (`pelicula`) REFERENCES `pelicula` (`idPelicula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
