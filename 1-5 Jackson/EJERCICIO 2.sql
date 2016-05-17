
CREATE TABLE CICLISTA
  (
    nombrec        VARCHAR2 (30) NOT NULL ,
    nacion         VARCHAR2 (30) ,
    fnac           DATE ,
    PRUEBA_nombrep VARCHAR2 (30) NOT NULL ,
    inicio         DATE ,
    fin            DATE
  ) ;
ALTER TABLE CICLISTA ADD CONSTRAINT CICLISTA_PK PRIMARY KEY ( nombrec ) ;


CREATE TABLE EQUIPO
  (
    nombree VARCHAR2 (30) NOT NULL ,
    nacion  VARCHAR2 (30) ,
    direct  VARCHAR2 (30) ,
    puesto  INTEGER ,
    inicio  DATE ,
    fin     DATE
  ) ;
ALTER TABLE EQUIPO ADD CONSTRAINT EQUIPO_PK PRIMARY KEY ( nombree ) ;


CREATE TABLE PRUEBA
  (
    nombrep VARCHAR2 (30) NOT NULL ,
    ano     DATE ,
    etapas  INTEGER ,
    km      INTEGER ,
    puesto  INTEGER
  ) ;
ALTER TABLE PRUEBA ADD CONSTRAINT PRUEBA_PK PRIMARY KEY ( nombrep ) ;


CREATE TABLE participa
  (
    EQUIPO_nombree VARCHAR2 (30) NOT NULL ,
    PRUEBA_nombrep VARCHAR2 (30) NOT NULL ,
    puesto         INTEGER
  ) ;
ALTER TABLE participa ADD CONSTRAINT participa_PK PRIMARY KEY ( EQUIPO_nombree,
PRUEBA_nombrep ) ;


CREATE TABLE pertenece
  (
    CICLISTA_nombrec VARCHAR2 (30) NOT NULL ,
    EQUIPO_nombree   VARCHAR2 (30) NOT NULL ,
    inicio           DATE ,
    fin              DATE
  ) ;
ALTER TABLE pertenece ADD CONSTRAINT pertenece_PK PRIMARY KEY (
CICLISTA_nombrec, EQUIPO_nombree ) ;


ALTER TABLE CICLISTA ADD CONSTRAINT CICLISTA_PRUEBA_FK FOREIGN KEY (
PRUEBA_nombrep ) REFERENCES PRUEBA ( nombrep ) ;

ALTER TABLE participa ADD CONSTRAINT FK_ASS_11 FOREIGN KEY ( EQUIPO_nombree )
REFERENCES EQUIPO ( nombree ) ;

ALTER TABLE participa ADD CONSTRAINT FK_ASS_12 FOREIGN KEY ( PRUEBA_nombrep )
REFERENCES PRUEBA ( nombrep ) ;

ALTER TABLE pertenece ADD CONSTRAINT FK_ASS_15 FOREIGN KEY ( CICLISTA_nombrec )
REFERENCES CICLISTA ( nombrec ) ;

ALTER TABLE pertenece ADD CONSTRAINT FK_ASS_16 FOREIGN KEY ( EQUIPO_nombree )
REFERENCES EQUIPO ( nombree ) ;


INSERT INTO PRUEBA(nombrep,ano,etapas,km,puesto)
VALUES('VELOCIDAD',TO_DATE('1989','YYYY'),1,100,10);

INSERT INTO PRUEBA(nombrep,ano,etapas,km,puesto)
VALUES('RESISTENCIA',TO_DATE('1990','YYYY'),2,200,10);

INSERT INTO PRUEBA(nombrep,ano,etapas,km,puesto)
VALUES('FUERZA',TO_DATE('1991','YYYY'),3,300,20);

INSERT INTO EQUIPO(nombree,nacion,direct,puesto,inicio,fin)
VALUES('ROJO','DO','Pedro',1,TO_DATE('1991','YYYY'),TO_DATE('2016','YYYY'));

INSERT INTO EQUIPO(nombree,nacion,direct,puesto,inicio,fin)
VALUES('BLUE','USA','Smith',2,TO_DATE('1991','YYYY'),TO_DATE('2016','YYYY'));

INSERT INTO EQUIPO(nombree,nacion,direct,puesto,inicio,fin)
VALUES('GREEN','UK','Snow',3,TO_DATE('1994','YYYY'),TO_DATE('2016','YYYY'));

INSERT INTO CICLISTA(nombrec,nacion,fnac,PRUEBA_nombrep,inicio,fin)
VALUES('Jackson','DO',TO_DATE('05-11-1989','DD-MM-YYYY'),'VELOCIDAD',TO_DATE('05-11-1995','DD-MM-YYYY'),TO_DATE('05-11-2016','DD-MM-YYYY'));

INSERT INTO CICLISTA(nombrec,nacion,fnac,PRUEBA_nombrep,inicio,fin)
VALUES('Johan','DO',TO_DATE('05-11-1993','DD-MM-YYYY'),'RESISTENCIA',TO_DATE('1995','YYYY'),TO_DATE('2016','YYYY'));

INSERT INTO CICLISTA(nombrec,nacion,fnac,PRUEBA_nombrep,inicio,fin)
VALUES('Gilbert','DO',TO_DATE('05-11-1995','DD-MM-YYYY'),'RESISTENCIA',TO_DATE('1996','YYYY'),TO_DATE('2016','YYYY'));

INSERT INTO participa(EQUIPO_nombree,PRUEBA_nombrep,puesto)
VALUES('ROJO','VELOCIDAD',1);

INSERT INTO participa(EQUIPO_nombree,PRUEBA_nombrep,puesto)
VALUES('BLUE','RESISTENCIA',2);

INSERT INTO participa(EQUIPO_nombree,PRUEBA_nombrep,puesto)
VALUES('GREEN','FUERZA',3);

INSERT INTO pertenece(CICLISTA_nombrec,EQUIPO_nombree,inicio,fin)
VALUES('Jackson','ROJO',TO_DATE('05-11-1995','DD-MM-YYYY'),TO_DATE('05-11-2016','DD-MM-YYYY'));

INSERT INTO pertenece(CICLISTA_nombrec,EQUIPO_nombree,inicio,fin)
VALUES('Johan','BLUE',TO_DATE('1995','YYYY'),TO_DATE('2016','YYYY'));

INSERT INTO pertenece(CICLISTA_nombrec,EQUIPO_nombree,inicio,fin)
VALUES('Gilbert','GREEN',TO_DATE('1996','YYYY'),TO_DATE('2016','YYYY'));
