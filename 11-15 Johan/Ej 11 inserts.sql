--Tabla Cliente
INSERT INTO CLIENTE ( USUARIO, CLAVE, NOMBRE, EMAIL)
VALUES ('zakamoto', '12345', 'zakamoto-des', 'zakamoto323@gmail.com' );

INSERT INTO CLIENTE ( USUARIO, CLAVE, NOMBRE, EMAIL)
VALUES ('cludses', 'sadksd', 'Manito loco', 'clasudes@gmail.com' );

INSERT INTO CLIENTE ( USUARIO, CLAVE, NOMBRE, EMAIL)
VALUES ('Loquendo', 'd2d2dd', 'El rufian', 'loquen23udes@gmail.com' );


--Tabla Producto
INSERT INTO PRODUCTO (CODIGO, NOMBRE, DESCR, FOTO)
VALUES ('x-01', 'cosa grande', 'es muy grande', 'ehxx298');

INSERT INTO PRODUCTO (CODIGO, NOMBRE, DESCR, FOTO)
VALUES ('x-02', 'cosa pequenia', 'es muy pequenio', 'ehxx299');

INSERT INTO PRODUCTO (CODIGO, NOMBRE, DESCR, FOTO)
VALUES ('x-03', 'cosa mediana', 'es muy mediano', 'ehxx300');


--Tabla Lote
INSERT INTO LOTE(CATNUM, SALIDA, PUJAMAX, TIEMPO, CODIGO)
VALUES (1, 'Por atraz', 'Mucho', '30 dias', 'x-01');

INSERT INTO LOTE(CATNUM, SALIDA, PUJAMAX, TIEMPO, CODIGO)
VALUES (2, 'Por alante', 'Poco', '20 dias', 'x-01');

INSERT INTO LOTE(CATNUM, SALIDA, PUJAMAX, TIEMPO, CODIGO)
VALUES (3, 'Por en medio', 'Medio', '40 dias', 'x-02');


--Tabla Puja
INSERT INTO PUJA(CANTIDAD, CATNUM, USUARIO, DIA, HORA)
VALUES (1, 1, 'cludses', '23', '8am');

INSERT INTO PUJA(CANTIDAD, CATNUM, USUARIO, DIA, HORA)
VALUES (2, 2, 'zakamoto', '20', '8pm');

INSERT INTO PUJA(CANTIDAD, CATNUM, USUARIO, DIA, HORA)
VALUES (3, 2, 'cludses', '13', '7am');
