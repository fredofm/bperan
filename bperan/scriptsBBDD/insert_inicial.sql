-- Roles
INSERT INTO `bperan`.`role` (idrole,nombre, descripcion)
VALUES (1,'admin','administrador del sistema');

INSERT INTO `bperan`.`role` (idrole,nombre, descripcion)
VALUES (2,'cliente','cliente del sistema');

--INSERT INTO `bperan`.`role` (idrole,nombre, descripcion) VALUES (3,'empleado','empleado del sistema');

-- Obras
INSERT INTO `bperan`.`obras`(`IDOBRA`,`NOMBREOBRA`,`UBICACION`,`DESCRIPCION`,`COSTE_TOTAL`,`FECHA_INICIO`,`FECHA_FIN`,`ESTADO`)
VALUES ('1','Primera Obra Nueva','Gijón','obra nueva',100000, '2016-05-23','2017-05-23 00:00:00','AA');