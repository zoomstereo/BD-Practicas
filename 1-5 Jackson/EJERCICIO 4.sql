
CREATE TABLE ARTICULO
  (
    titulo         VARCHAR2 (30) NOT NULL ,
    inicio         DATE ,
    fin            DATE ,
    REVISTA_issn   VARCHAR2 (30) NOT NULL ,
    REVISTA_numero INTEGER NOT NULL
  ) ;
ALTER TABLE ARTICULO ADD CONSTRAINT ARTICULO_PK PRIMARY KEY ( titulo ) ;


CREATE TABLE AUTOR
  (
    nombre  VARCHAR2 (30) NOT NULL ,
    email   VARCHAR2 (30) ,
    adscrip VARCHAR2 (30)
  ) ;
ALTER TABLE AUTOR ADD CONSTRAINT AUTOR_PK PRIMARY KEY ( nombre ) ;


CREATE TABLE REVISTA
  (
    issn   VARCHAR2 (30) NOT NULL ,
    numero INTEGER NOT NULL ,
    titulo VARCHAR2 (30) ,
    ano    DATE
  ) ;
ALTER TABLE REVISTA ADD CONSTRAINT REVISTA_PK PRIMARY KEY ( issn, numero ) ;


CREATE TABLE escribe
  (
    ARTICULO_titulo VARCHAR2 (30) NOT NULL ,
    AUTOR_nombre    VARCHAR2 (30) NOT NULL
  ) ;
ALTER TABLE escribe ADD CONSTRAINT escribe_PK PRIMARY KEY ( ARTICULO_titulo,
AUTOR_nombre ) ;


ALTER TABLE ARTICULO ADD CONSTRAINT ARTICULO_REVISTA_FK FOREIGN KEY (
REVISTA_issn, REVISTA_numero ) REFERENCES REVISTA ( issn, numero ) ;

ALTER TABLE escribe ADD CONSTRAINT FK_ASS_1 FOREIGN KEY ( ARTICULO_titulo )
REFERENCES ARTICULO ( titulo ) ;

ALTER TABLE escribe ADD CONSTRAINT FK_ASS_8 FOREIGN KEY ( AUTOR_nombre )
REFERENCES AUTOR ( nombre ) ;



INSERT INTO AUTOR(nombre,email,adscrip)
VALUES('Jackson Cuevas','jcuevasche@gmail.com','.');

INSERT INTO AUTOR(nombre,email,adscrip)
VALUES('Pedro','pedro@gmail.com','.');

INSERT INTO AUTOR(nombre,email,adscrip)
VALUES('Gilbert','Gilbert@gmail.com','.');

INSERT INTO REVISTA(issn,numero,titulo,ano)
VALUES('a54321654',346321,'EL DIA',TO_DATE('2016','YYYY'));

INSERT INTO REVISTA(issn,numero,titulo,ano)
VALUES('a54398765',647896,'DIARIO',TO_DATE('2016','YYYY'));

INSERT INTO REVISTA(issn,numero,titulo,ano)
VALUES('a398765',7896,'LIBRE',TO_DATE('2016','YYYY'));

INSERT INTO ARTICULO(titulo,inicio,fin,REVISTA_issn,REVISTA_numero)
VALUES('Tecnologia del manana',TO_DATE('01-06-2015','DD-MM-YYYY'),TO_DATE('02-06-2015','DD-MM-YYYY'),'a54321654',346321);

INSERT INTO ARTICULO(titulo,inicio,fin,REVISTA_issn,REVISTA_numero)
VALUES('Robotica',TO_DATE('05-06-2015','DD-MM-YYYY'),TO_DATE('06-06-2015','DD-MM-YYYY'),'a54398765',647896);

INSERT INTO ARTICULO(titulo,inicio,fin,REVISTA_issn,REVISTA_numero)
VALUES('Drone',TO_DATE('05-06-2015','DD-MM-YYYY'),TO_DATE('06-06-2015','DD-MM-YYYY'),'a398765',7896);

INSERT INTO escribe(ARTICULO_titulo,AUTOR_nombre)
VALUES('Tecnologia del manana','Jackson Cuevas');

INSERT INTO escribe(ARTICULO_titulo,AUTOR_nombre)
VALUES('Robotica','Pedro');

INSERT INTO escribe(ARTICULO_titulo,AUTOR_nombre)
VALUES('Drone','Gilbert');
