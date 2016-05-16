CREATE TABLE CLIENTE(USUARIO VARCHAR2(20) PRIMARY KEY,
                    CLAVE VARCHAR2(20),
                    NOMBRE VARCHAR2(20),
                    EMAIL VARCHAR2(50) );

CREATE TABLE PRODUCTO(CODIGO VARCHAR2(20) PRIMARY KEY,
                    NOMBRE VARCHAR2(20),
                    DESCR VARCHAR2(20),
                    FOTO VARCHAR2(20) );

CREATE TABLE LOTE(CATNUM NUMERIC PRIMARY KEY,
                SALIDA VARCHAR2(20),
                PUJAMAX VARCHAR2(20),
                TIEMPO VARCHAR2(10),
                CODIGO VARCHAR2(20),
        FOREIGN KEY(CODIGO) REFERENCES PRODUCTO(CODIGO));

CREATE TABLE PUJA(CANTIDAD NUMERIC PRIMARY KEY,
                CATNUM NUMERIC,
                USUARIO VARCHAR2(20),
                DIA VARCHAR2(10),
                HORA VARCHAR2(10),
        FOREIGN KEY(CATNUM) REFERENCES LOTE(CATNUM),
        FOREIGN KEY(USUARIO) REFERENCES CLIENTE(USUARIO));
