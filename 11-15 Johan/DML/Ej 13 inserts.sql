--Tabla Usuario
INSERT INTO USUARIO(NOMBREU, PASSWD, EMAIL)
VALUES ('suzekey', '12345', 'sskey@gmail.com');

INSERT INTO USUARIO(NOMBREU, PASSWD, EMAIL)
VALUES ('panzer', '112233', 'panpan33@gmail.com');

INSERT INTO USUARIO(NOMBREU, PASSWD, EMAIL)
VALUES ('luluco', 'lulu234', 'lululu@gmail.com');


--Tabla Foto
INSERT INTO FOTO(URL, NOMBREF, TIPO, TAMANO, RESOLUCION, NOMBREU)
VALUES ('http://huehue.com/asidjaisd.png', 'Cosa', 'png', 500, '1366x760', 'suzekey');

INSERT INTO FOTO(URL, NOMBREF, TIPO, TAMANO, RESOLUCION, NOMBREU)
VALUES ('http://comidas.com/a111d.png', 'Pollo', 'png', 1000, '2366x1060', 'panzer');

INSERT INTO FOTO(URL, NOMBREF, TIPO, TAMANO, RESOLUCION, NOMBREU)
VALUES ('http://recketd.com/fkedup23.jpg', 'Meme', 'jpg', 300, '800x600', 'suzekey');


--Tabla Etiqueta
INSERT INTO ETIQUETA(NOMBREET, TOTALFOTOS)
VALUES ('Riko', 59);

INSERT INTO ETIQUETA(NOMBREET, TOTALFOTOS)
VALUES ('Sheshes', 109);

INSERT INTO ETIQUETA(NOMBREET, TOTALFOTOS)
VALUES ('N98', 10);


--Tabla Asignada
INSERT INTO ASIGNADA(URL, NOMBREET, SUGERIDA_POR)
VALUES ('http://huehue.com/asidjaisd.png', 'Riko', 'YoYo Pi RoRo');

INSERT INTO ASIGNADA(URL, NOMBREET, SUGERIDA_POR)
VALUES ('http://comidas.com/a111d.png', 'Sheshes', 'Juancito');

INSERT INTO ASIGNADA(URL, NOMBREET, SUGERIDA_POR)
VALUES ('http://huehue.com/asidjaisd.png', 'N98', 'Alucard');
