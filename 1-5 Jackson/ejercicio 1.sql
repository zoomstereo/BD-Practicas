CREATE TABLE CATEGORIA
  (
    nombrec VARCHAR2 (30) NOT NULL ,
    descrip VARCHAR2 (30) ,
    encarg  VARCHAR2 (30)
  ) ;
ALTER TABLE CATEGORIA ADD CONSTRAINT CATEGORIA_PK PRIMARY KEY ( nombrec ) ;


CREATE TABLE INGRED
  (
    nombrei  VARCHAR2 (30) NOT NULL ,
    unidades INTEGER ,
    almacen  VARCHAR2 (30)
  ) ;
ALTER TABLE INGRED ADD CONSTRAINT INGRED_PK PRIMARY KEY ( nombrei ) ;

CREATE TABLE PLATO
  (
    nombrep           VARCHAR2 (30) NOT NULL ,
    descrip           VARCHAR2 (30) ,
    nivel             INTEGER ,
    foto              VARCHAR2 (100) ,
    precio            NUMBER ,
    CATEGORIA_nombrec VARCHAR2 (30) NOT NULL
  ) ;
ALTER TABLE PLATO ADD CONSTRAINT PLATO_PK PRIMARY KEY ( nombrep ) ;

CREATE TABLE utiliza
  (
    PLATO_nombrep  VARCHAR2 (30) NOT NULL ,
    INGRED_nombrei VARCHAR2 (30) NOT NULL,
    cantidad INTEGER
  ) ;
ALTER TABLE utiliza ADD CONSTRAINT utiliza_PK PRIMARY KEY ( PLATO_nombrep,
INGRED_nombrei ) ;


ALTER TABLE utiliza ADD CONSTRAINT FK_ASS_2 FOREIGN KEY ( PLATO_nombrep )
REFERENCES PLATO ( nombrep ) ;

ALTER TABLE utiliza ADD CONSTRAINT FK_ASS_3 FOREIGN KEY ( INGRED_nombrei )
REFERENCES INGRED ( nombrei ) ;

ALTER TABLE PLATO ADD CONSTRAINT PLATO_CATEGORIA_FK FOREIGN KEY (
CATEGORIA_nombrec ) REFERENCES CATEGORIA ( nombrec ) ;


INSERT INTO CATEGORIA(nombrec,descrip,encarg)
VALUES('Platos de pescado','Acqua pazza(comida)','Juan');

INSERT INTO CATEGORIA(nombrec,descrip,encarg)
VALUES('Platos de atun','Empanada de atún','Pedro');

INSERT INTO CATEGORIA(nombrec,descrip,encarg)
VALUES('Pescado seco','Camaron seco','Jose');

INSERT INTO PLATO(nombrep,descrip,nivel,foto,precio,CATEGORIA_nombrec)
VALUES('Canh chua','es una sopa agria autóctona',1,'Canh_chua',1000,'Platos de pescado');

INSERT INTO PLATO(nombrep,descrip,nivel,foto,precio,CATEGORIA_nombrec)
VALUES('Marmita de bonito','basado en Thunnus alalunga',2,'Marmita_de_bonito',2000,'Platos de atun');

INSERT INTO PLATO(nombrep,descrip,nivel,foto,precio,CATEGORIA_nombrec)
VALUES('Kipper','es un plato típico inglés',3,'Kipper',3000,'Pescado seco');

INSERT INTO INGRED(nombrei,unidades,almacen)
VALUES('grams catfish steak',500,'pescado');

INSERT INTO INGRED(nombrei,unidades,almacen)
VALUES('patatas',1.5,'atun');

INSERT INTO INGRED(nombrei,unidades,almacen)
VALUES('gramos de arroz basmati',300,'Pescado seco');

INSERT INTO utiliza(PLATO_nombrep,INGRED_nombrei,cantidad)
VALUES('Canh chua','grams catfish steak',5);

INSERT INTO utiliza(PLATO_nombrep,INGRED_nombrei,cantidad)
VALUES('Marmita de bonito','patatas',10);

INSERT INTO utiliza(PLATO_nombrep,INGRED_nombrei,cantidad)
VALUES('Kipper','gramos de arroz basmati',11);
