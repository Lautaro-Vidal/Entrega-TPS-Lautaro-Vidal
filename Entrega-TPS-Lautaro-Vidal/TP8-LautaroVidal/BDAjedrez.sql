USE ajedrez;

SELECT * FROM pieza LIMIT 32;

CREATE TABLE `color` (
  `idColor` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idColor`),
  UNIQUE KEY `idColor_UNIQUE` (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `tipopieza` (
  `idTipoPieza` int(11) NOT NULL AUTO_INCREMENT,
  `Descripciondepieza` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pieza` (
  `idPieza` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Descripcion` VARCHAR(45) DEFAULT NULL,
  `idColor` INT NOT NULL,
  `idTipoPieza` INT NOT NULL,
  `Posicion` VARCHAR(45) DEFAULT NULL,
  `Comportamiento` VARCHAR(45) DEFAULT NULL,
  `Movimiento` VARCHAR(45) DEFAULT NULL,
  `Fecha_Creacion` DATE DEFAULT NULL,
  PRIMARY KEY (`idPieza`, `idColor`, `idTipoPieza`),
  KEY `fk_Pieza_Color_idx` (`idColor`),
  KEY `fk_Pieza_TipoPieza1_idx` (`idTipoPieza`),
  CONSTRAINT `fk_Pieza_Color` FOREIGN KEY (`idColor`) REFERENCES `color` (`idColor`),
  CONSTRAINT `fk_Pieza_TipoPieza1` FOREIGN KEY (`idTipoPieza`) REFERENCES `tipopieza` (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb3;


SHOW GRANTS FOR 'root'@'localhost';

-- Insertar colores
INSERT INTO `color` (`idColor`,`Descripcion`) VALUES (1,'Blanco');
INSERT INTO `color` (`idColor`,`Descripcion`) VALUES (2,'Negro');

-- Insertar tipos de piezas
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (1,'Reina');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (2,'Rey');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (3,'Torre');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (4,'Alfil');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (5,'Caballo');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (6,'Peon');

-- Insertar piezas con velocidad
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (1,'Reina Blanca Chica de Plastico',1,1, 3);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (2,'Reina Negra Chica de Plastico',2,1, 3);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (3,'Rey Blanco Chico de Plastico',1,2, 1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (4,'Rey Negro Chico de Plástico',2,2, 1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (5,'Alfil Blanco Chico de Plástico',1,4, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (6,'Alfil Blanco Chico de Plástico',1,4, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (7,'Alfil Negro Chico de Plástico',2,4, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (8,'Alfil Negro Chico de Plástico',2,4, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (9,'Torre Blanca Chica de Plástico',1,3, 1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (10,'Torre Blanca Chica de Plástico',1,3, 1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (11,'Torre Negra Chica de Plástico',2,3, 1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (12,'Torre Negra Chica de Plástico',2,3, 1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (13,'Caballo Blanco Chico de Plástico',1,5, 3);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (14,'Caballo Blanco Chico de Plástico',1,5, 3);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (15,'Caballo Negro Chico de Plástico',2,5, 3);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (16,'Caballo Negro Chico de Plástico',2,5, 3);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (17,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (18,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (19,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (20,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (21,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (22,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (23,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (24,'Peón Blanco de Plástico',1,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (17,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (18,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (19,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (20,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (21,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (22,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (23,'Peón Negro de Plástico',2,6, 2);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`Velocidad`) VALUES (24,'Peón Negro de Plástico',2,6, 2);
