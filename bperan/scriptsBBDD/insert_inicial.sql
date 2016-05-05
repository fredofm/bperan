-- Roles
INSERT INTO `bperan`.`role` (idrole,nombre, descripcion)
VALUES (1,'admin','administrador del sistema');

INSERT INTO `bperan`.`role` (idrole,nombre, descripcion)
VALUES (2,'cliente','cliente del sistema');

-- Usuario
INSERT INTO `bperan`.`usuario`(IDUSUARIO,NOMBRE,PASSWORD,FECHACREACION,IDROLE)
VALUES(1,'usunuevo','prueba','2016-05-04',2);

INSERT INTO `bperan`.`usuario`(IDUSUARIO,NOMBRE,PASSWORD,FECHACREACION,IDROLE)
VALUES(2,'usuprueba','prueba','2016-05-05',2);

 -- Obras
INSERT INTO `bperan`.`obras`(IDOBRA,NOMBREOBRA,UBICACION,DESCRIPCION,COSTE_TOTAL,FECHA_INICIO,FECHA_FIN,ESTADO)
VALUES ('1','Primera Obra Nueva','Gijón','obra nueva',10000.500, '2016-05-23','2017-05-23','AA');

INSERT INTO `bperan`.`obras`(IDOBRA,NOMBREOBRA,UBICACION,DESCRIPCION,COSTE_TOTAL,FECHA_INICIO,FECHA_FIN,ESTADO)
VALUES ('2','Segunda Obra Nueva','Lille','obra nueva',5000, '2016-06-23','2016-10-23','NA');

-- Cliente

INSERT INTO `bperan`.`cliente`(IDCLIENTE,IDUSUARIO,NOMBREEMPRESA,TELEFONO,FAX,DIRECCION,POBLACION,PROVINCIA,CODIGOPOSTAL,EMIAL,CIF_NIF,
ESTADO)
VALUES(1, 1, 'Asesoría Avilesina', 985555555,985888888,'C/José CUeto, n38, entl B','Avilés','Asturias',33400,'aravilesina@aravilesina.es','53531493M','AA');

-- Empleado
INSERT INTO `bperan`.`empleado`(IDEMPLEADO,IDOBRA,NOMBRE,APELLIDOS,NIF,FECHANACIMIENTO,TELEFONO,DIRECCION,POBLACION,PROVINCIA,CODIGOPOSTAL,NACIONALIDAD,NUMSEGURIDADSOCIAL,TIPOCONTRATO,FECHAALTA,ESTADO,CATEGORIA)
VALUES(1,1,'Empleado 1','apellido1','71890405H','1981-02-23',666666666,'Avd Gijón, 39,2ºizda','Candás','Asturias',33589,'Española',33555555555444444444,'Fin Obra','2016-03-12','AA','albañil');


