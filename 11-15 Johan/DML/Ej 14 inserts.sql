--Tabla Web
INSERT INTO WEB(URL, TITULO, DESCRIP, VALOR)
VALUES ('www.google.com', 'Google', 'Engine de busquedas online', 3000000);

INSERT INTO WEB(URL, TITULO, DESCRIP, VALOR)
VALUES ('www.youtube.com', 'Youtube', 'website de videos', 2000000);

INSERT INTO WEB(URL, TITULO, DESCRIP, VALOR)
VALUES ('www.hi5.com', 'hi5', 'Red social', 3000);


--Tabla Visitas
INSERT INTO VISITAS(INDICE, FECHA, TIEMPO, URL)
VALUES (1, TO_DATE('01-09-2015', 'dd-mm-yyyy'), '32 mins', 'www.youtube.com');

INSERT INTO VISITAS(INDICE, FECHA, TIEMPO, URL)
VALUES (2, TO_DATE('11-09-2015', 'dd-mm-yyyy'), '55 mins', 'www.youtube.com');

INSERT INTO VISITAS(INDICE, FECHA, TIEMPO, URL)
VALUES (3, TO_DATE('01-03-2016', 'dd-mm-yyyy'), '22 mins', 'www.google.com');


--Tabla Categorias
INSERT INTO CATEGORIA (NOMBRECAT, NUMPAG)
VALUES ('Deportes', 10);

INSERT INTO CATEGORIA (NOMBRECAT, NUMPAG)
VALUES ('Comedia', 40);

INSERT INTO CATEGORIA (NOMBRECAT, NUMPAG)
VALUES ('Modas', 70);


--Tabla Asignada
INSERT INTO ASIGNADA(NOMBRECAT, URL, FECHA)
VALUES ('Deportes', 'www.youtube.com', TO_DATE('11-11-2011', 'dd-mm-yyyy'));

INSERT INTO ASIGNADA(NOMBRECAT, URL, FECHA)
VALUES ('Comedia', 'www.youtube.com', TO_DATE('02-1-2015', 'dd-mm-yyyy'));

INSERT INTO ASIGNADA(NOMBRECAT, URL, FECHA)
VALUES ('Modas', 'www.google.com', TO_DATE('09-11-2001', 'dd-mm-yyyy'));
