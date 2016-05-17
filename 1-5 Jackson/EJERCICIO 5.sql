CREATE TABLE POBLACION
  (
    idpob     INTEGER NOT NULL ,
    nombre    VARCHAR2 (30) ,
    pais      VARCHAR2 (30) ,
    habs      INTEGER
  ) ;
ALTER TABLE POBLACION ADD CONSTRAINT POBLACION_PK PRIMARY KEY ( idpob ) ;


CREATE TABLE PROYECTO
  (
    cod       INTEGER NOT NULL ,
    titulo    VARCHAR2 (30) ,
    inicio    DATE ,
    fin       DATE ,
    presup    INTEGER ,
    resp      VARCHAR2 (30) ,
    SEDE_id   INTEGER NOT NULL
  ) ;
ALTER TABLE PROYECTO ADD CONSTRAINT PROYECTO_PK PRIMARY KEY ( cod ) ;


CREATE TABLE SEDE
  (
    id        INTEGER NOT NULL ,
    ciudad    VARCHAR2 (30) ,
    pais      VARCHAR2 (30) ,
    direccion VARCHAR2 (30) ,
    tfno      VARCHAR2 (30) ,
    direct    VARCHAR2 (30)
  ) ;
ALTER TABLE SEDE ADD CONSTRAINT SEDE_PK PRIMARY KEY ( id ) ;


CREATE TABLE actuacion
  (
    PROYECTO_cod    INTEGER NOT NULL ,
    POBLACION_idpob INTEGER NOT NULL ,
    inversion       INTEGER ,
    descrip         VARCHAR2 (30)
  ) ;
ALTER TABLE actuacion ADD CONSTRAINT actuacion_PK PRIMARY KEY ( PROYECTO_cod,
POBLACION_idpob ) ;


ALTER TABLE actuacion ADD CONSTRAINT FK_ASS_1 FOREIGN KEY ( PROYECTO_cod )
REFERENCES PROYECTO ( cod ) ;

ALTER TABLE actuacion ADD CONSTRAINT FK_ASS_2 FOREIGN KEY ( POBLACION_idpob )
REFERENCES POBLACION ( idpob ) ;

ALTER TABLE PROYECTO ADD CONSTRAINT PROYECTO_SEDE_FK FOREIGN KEY ( SEDE_id )
REFERENCES SEDE ( id ) ;



INSERT INTO POBLACION(idpob,nombre,pais,habs)
VALUES(54652,'Santo Domingo','RD',100000);

INSERT INTO POBLACION(idpob,nombre,pais,habs)
VALUES(54462,'San Juan','RD',1000);

INSERT INTO POBLACION(idpob,nombre,pais,habs)
VALUES(54562,'Azua','RD',3000);

INSERT INTO SEDE(id,ciudad,pais,direccion,tfno,direct)
VALUES(14654,'Santo Domingo','RD','Av.indep','6543215989','Pedro');

INSERT INTO SEDE(id,ciudad,pais,direccion,tfno,direct)
VALUES(4654,'Mexico','Mexico','Av.sol','3456715989','Gilbert');

INSERT INTO SEDE(id,ciudad,pais,direccion,tfno,direct)
VALUES(9654,'NY','USA','Av.Manha','3567815989','Johan');

INSERT INTO PROYECTO(cod,titulo,inicio,fin,presup,resp,SEDE_id)
VALUES(8654,'Nueva Calle',TO_DATE('05-11-2016','DD-MM-YYYY'),TO_DATE('05-11-2017','DD-MM-YYYY'),460000,'Fidel',4654);

INSERT INTO PROYECTO(cod,titulo,inicio,fin,presup,resp,SEDE_id)
VALUES(5654,'Nueva Av',TO_DATE('05-11-2018','DD-MM-YYYY'),TO_DATE('05-11-2019','DD-MM-YYYY'),5460000,'Chaves',9654);

INSERT INTO PROYECTO(cod,titulo,inicio,fin,presup,resp,SEDE_id)
VALUES(15654,'Nueva Casas',TO_DATE('05-11-2020','DD-MM-YYYY'),TO_DATE('05-11-2021','DD-MM-YYYY'),15460000,'Danilo',14654);

INSERT INTO actuacion(PROYECTO_cod,POBLACION_idpob,inversion,descrip)
VALUES(8654,54462,460000,'.');

INSERT INTO actuacion(PROYECTO_cod,POBLACION_idpob,inversion,descrip)
VALUES(5654,54562,5460000,'.');

INSERT INTO actuacion(PROYECTO_cod,POBLACION_idpob,inversion,descrip)
VALUES(15654,54652,15460000,'.');
