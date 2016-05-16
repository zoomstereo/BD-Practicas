--Tabla Especies
INSERT INTO ESPECIES(NOMBRESP, FLORACION, PLANTACION, SUELO, EXPOISICIN)
VALUES ('Kutrana', 'Mucha', 'Lugares', 'Duro', 'Fuerte');

INSERT INTO ESPECIES(NOMBRESP, FLORACION, PLANTACION, SUELO, EXPOISICIN)
VALUES ('Zakalo', 'Mucha', 'Lugares', 'Duro', 'Fuerte');

INSERT INTO ESPECIES(NOMBRESP, FLORACION, PLANTACION, SUELO, EXPOISICIN)
VALUES ('Polimera', 'Poca', 'Lugares', 'Duro', 'Mal');


--Tabla Pedidos
INSERT INTO PEDIDOS(NUMPED, FECHA, IMPORTE)
VALUES (1, TO_DATE('09-11-2015','dd-mm-yyyy'), 3999);

INSERT INTO PEDIDOS(NUMPED, FECHA, IMPORTE)
VALUES (2, TO_DATE('19-01-2015','dd-mm-yyyy'), 5000);

INSERT INTO PEDIDOS(NUMPED, FECHA, IMPORTE)
VALUES (3, TO_DATE('01-12-2015','dd-mm-yyyy'), 32999);

--Tabla Flores
INSERT INTO FLORES(CODIGO, NOMBREFL, PRECIO, NOMBRESP)
VALUES ('XX1', 'Juanita', 2000, 'Kutrana');

INSERT INTO FLORES(CODIGO, NOMBREFL, PRECIO, NOMBRESP)
VALUES ('XX2', 'Pedrada', 5000, 'Zakalo');

INSERT INTO FLORES(CODIGO, NOMBREFL, PRECIO, NOMBRESP)
VALUES ('XX3', 'Loquendo', 1000, 'Kutrana');


--Tabla Contiene
INSERT INTO CONTIENE (NUMPED, CODIGO, CANTIDAD)
VALUES ( 1, 'XX1', 30);

INSERT INTO CONTIENE (NUMPED, CODIGO, CANTIDAD)
VALUES ( 2, 'XX2', 40);

INSERT INTO CONTIENE (NUMPED, CODIGO, CANTIDAD)
VALUES ( 3, 'XX1', 10);