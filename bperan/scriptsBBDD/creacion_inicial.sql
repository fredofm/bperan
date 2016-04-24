DROP DATABASE IF EXISTS bperan; 

CREATE DATABASE bperan;

DROP TABLE IF EXISTS  `bperan`.`role`;

CREATE TABLE   `bperan`.`role` (
  `IDROLE` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `DESCRIPCION` varchar(200) NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bperan`.`usuario`;

CREATE TABLE  `bperan`.`usuario` (
  `IDUSUARIO` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `NOMBRE` varchar(45) NOT NULL,
   `PASSWORD` varchar(8) NOT NULL,
  `FECHACREACION` datetime NOT NULL,
  `IDROLE` int(11) NOT NULL,
   FOREIGN KEY (IDROLE) REFERENCES `bperan`.`role`(IDROLE) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS  `bperan`.`cliente`;

CREATE TABLE   `bperan`.`cliente` (
  `IDCLIENTE` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `NOMBREEMPRESA` varchar(45) NOT NULL,
  `TELEFONO` int(9) NOT NULL,
  `FAX` int(45),
  `DIRECCION` varchar(45) NOT NULL,
  `POBLACION` varchar(45) NOT NULL,
  `PROVINCIA` varchar(45) NOT NULL,
  `CODIGOPOSTAL` int(5) NOT NULL,
  `EMIAL` varchar(100),
  `CIF_NIF` varchar(9) NOT NULL,
  `ESTADO` varchar(2) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bperan`.`empleado`;

CREATE TABLE `bperan`.`empleado` (
  `IDEMPLEADO` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `APELLIDOS` varchar(45) NOT NULL,
  `NIF` varchar(9) NOT NULL,
  `FECHANACIMIENTO` datetime NOT NULL,
  `TELEFONO` int(9) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `POBLACION` varchar(45) NOT NULL,
  `PROVINCIA` varchar(45) NOT NULL,
  `CODIGOPOSTAL` int(5) NOT NULL,
  `NACIONALIDAD` int(5) NOT NULL,
  `NUMSEGURIDADSOCIAL` int(20) NOT NULL,
  `TIPOCONTRATO` varchar(45),
  `FECHAALTA` datetime NOT NULL,  
  `ESTADO` varchar(2) NOT NULL,
  `CATEGORIA` varchar(100)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS  `bperan`.`vacaciones`;

CREATE TABLE `bperan`.`vacaciones` (
  `IDVACACIONES` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `IDEMPLEADO` INT(11) NOT NULL,
  `FECHA_INICIO` datetime NOT NULL,  
  `FECHA_FIN` datetime NOT NULL,
  FOREIGN KEY (IDEMPLEADO) REFERENCES `bperan`.`empleado`(IDEMPLEADO) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bperan`.`bajalaboral`;

CREATE TABLE  `bperan`.`bajalaboral` (
  `IDBAJALABORAL` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `IDEMPLEADO` INT(11) NOT NULL,
  `FECHA_INICIO` datetime NOT NULL,  
  `FECHA_FIN` datetime NOT NULL,
  `TIPO` varchar(100) NOT NULL,
  FOREIGN KEY (IDEMPLEADO) REFERENCES `bperan`.`empleado`(IDEMPLEADO) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bperan`.`obras`;

CREATE TABLE  `bperan`.`obras` (
  `IDOBRA` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `IDCLIENTE` int(11) NOT NULL,
  `IDEMPLEADO` int(11) NOT NULL,
  `UICACION` varchar(45) NOT NULL,
  `DESCRIPCION` varchar(250),
  `COSTE_TOTAL` int(20) NOT NULL,
  `FECHA_INICIO` datetime NOT NULL,
  `FECHA_FIN` datetime NOT NULL,
  `ESTADO` varchar(2) NOT NULL,
  FOREIGN KEY (IDCLIENTE) REFERENCES `bperan`.`cliente`(IDCLIENTE) ON DELETE CASCADE,
  FOREIGN KEY (IDEMPLEADO) REFERENCES `bperan`.`empleado`(IDEMPLEADO) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bperan`.`presupuesto`;

CREATE TABLE  `bperan`.`presupuesto` (
  `IDPRESUPUESTO` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `IDOBRA` int(11)  NOT NULL,
  `IDCLIENTE` int(11) NOT NULL,
  `COSTE_TOTAL` int(20) NOT NULL,
  `FECHA_INICIO` datetime NOT NULL,
  `FECHA_FIN` datetime NOT NULL,
  `ESTADO` varchar(2) NOT NULL,
  FOREIGN KEY (IDOBRA) REFERENCES `bperan`.`obras`(IDOBRA) ON DELETE CASCADE,
  FOREIGN KEY (IDCLIENTE) REFERENCES `bperan`.`cliente`(IDCLIENTE) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `bperan`.`fotos`;

CREATE TABLE  `bperan`.`fotos` (
  `IDFOTO` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `IDOBRA` int(11)  NOT NULL,
  `IMAGEN` varchar(250) NOT NULL,
  FOREIGN KEY (IDOBRA) REFERENCES `bperan`.`obras`(IDOBRA) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

