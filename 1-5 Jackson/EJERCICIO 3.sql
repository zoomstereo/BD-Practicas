CREATE TABLE ACTOR
  (
    nombrea   VARCHAR2 (30) NOT NULL ,
    nacion    VARCHAR2 (30) ,
    personaje VARCHAR2 (30)
  ) ;
ALTER TABLE ACTOR ADD CONSTRAINT ACTOR_PK PRIMARY KEY ( nombrea ) ;


CREATE TABLE DIRECTOR
  (
    nombre VARCHAR2 (30) NOT NULL ,
    fnac   DATE ,
    nacion VARCHAR2 (30)
  ) ;
ALTER TABLE DIRECTOR ADD CONSTRAINT DIRECTOR_PK PRIMARY KEY ( nombre ) ;


CREATE TABLE PELICULA
  (
    titulo          VARCHAR2 (30) NOT NULL ,
    ano             DATE ,
    nacion          VARCHAR2 (30) ,
    idioma          VARCHAR2 (30) ,
    color           VARCHAR2 (30) ,
    resumen         VARCHAR2 (30) ,
    observa         VARCHAR2 (30) ,
    DIRECTOR_nombre VARCHAR2 (30) NOT NULL ,
    personaje       VARCHAR2 (30)
  ) ;
ALTER TABLE PELICULA ADD CONSTRAINT PELICULA_PK PRIMARY KEY ( titulo ) ;


CREATE TABLE reparto
  (
    PELICULA_titulo VARCHAR2 (30) NOT NULL ,
    ACTOR_nombrea   VARCHAR2 (30) NOT NULL ,
    personaje       VARCHAR2 (30)
  ) ;
ALTER TABLE reparto ADD CONSTRAINT reparto_PK PRIMARY KEY ( PELICULA_titulo,
ACTOR_nombrea ) ;


ALTER TABLE reparto ADD CONSTRAINT FK_ASS_12 FOREIGN KEY ( PELICULA_titulo )
REFERENCES PELICULA ( titulo ) ;

ALTER TABLE reparto ADD CONSTRAINT FK_ASS_13 FOREIGN KEY ( ACTOR_nombrea )
REFERENCES ACTOR ( nombrea ) ;

ALTER TABLE PELICULA ADD CONSTRAINT PELICULA_DIRECTOR_FK FOREIGN KEY (
DIRECTOR_nombre ) REFERENCES DIRECTOR ( nombre ) ;




INSERT INTO ACTOR(nombrea,nacion,personaje)
VALUES('Jackson Cuevas','DO','John Snow');

INSERT INTO ACTOR(nombrea,nacion,personaje)
VALUES('Pedro','DO','R2D2');

INSERT INTO ACTOR(nombrea,nacion,personaje)
VALUES('Johan','DO','3CPO');


INSERT INTO DIRECTOR(nombre,fnac,nacion)
VALUES('Jackson Spielberg',TO_DATE('05-11-1989','DD-MM-YYYY'),'DO');

INSERT INTO DIRECTOR(nombre,fnac,nacion)
VALUES('Pedro Lucas',TO_DATE('05-11-1995','DD-MM-YYYY'),'DO');

INSERT INTO DIRECTOR(nombre,fnac,nacion)
VALUES('Gilbert Jackson',TO_DATE('05-11-1994','DD-MM-YYYY'),'DO');


INSERT INTO PELICULA(titulo,ano,nacion,idioma,color,resumen,observa,DIRECTOR_nombre,personaje)
VALUES('Los dias esperados',TO_DATE('1985','YYYY'),'DO','ES','FULL COLOR','Es una pelicula','Good','Jackson Spielberg','The waiter');

INSERT INTO PELICULA(titulo,ano,nacion,idioma,color,resumen,observa,DIRECTOR_nombre,personaje)
VALUES('Los bebedores',TO_DATE('1998','YYYY'),'DO','ES','FULL COLOR','Para beber','Good','Pedro Lucas','Steve Ron');

INSERT INTO PELICULA(titulo,ano,nacion,idioma,color,resumen,observa,DIRECTOR_nombre,personaje)
VALUES('Los pinos',TO_DATE('2000','YYYY'),'DO','ES','FULL COLOR','La vida de los estudiante....','Good','Gilbert Jackson','Nova to');


INSERT INTO reparto(PELICULA_titulo,ACTOR_nombrea,personaje)
VALUES('Los dias esperados','Jackson Cuevas','The waiter');

INSERT INTO reparto(PELICULA_titulo,ACTOR_nombrea,personaje)
VALUES('Los bebedores','Pedro','Steve Ron');

INSERT INTO reparto(PELICULA_titulo,ACTOR_nombrea,personaje)
VALUES('Los pinos','Johan','Nova to');
