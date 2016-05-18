CREATE TABLE Avion
(
    matricula  VARCHAR2(25),
    fabricante VARCHAR2(40),
    modelo     VARCHAR2(30),
    capacidad  NUMERIC,
    autonomia  NUMERIC,
	CONSTRAINT PK_Avion PRIMARY KEY(matricula)
);

CREATE TABLE Aeropuerto
(
   aid     NUMERIC,
   nombre  VARCHAR2(70),
   ciudad  VARCHAR2(70),
   pais    VARCHAR2(30),
   CONSTRAINT PK_Aeropuerto PRIMARY KEY(aid)
);

CREATE TABLE Vuelo
(
   vid     NUMERIC,
   origen  NUMERIC,
   destino NUMERIC,
   CONSTRAINT PK_Vuelo PRIMARY KEY(vid),
   FOREIGN KEY(origen) REFERENCES Aeropuerto(aid),
   FOREIGN KEY(destino) REFERENCES Aeropuerto(aid)
);

CREATE TABLE Asignado
(
    vid       NUMERIC,
    matricula VARCHAR2(25),
    fecha     DATE,
	CONSTRAINT PK_Asignado PRIMARY KEY(vid, matricula),
    FOREIGN KEY(vid) REFERENCES Vuelo(vid),
    FOREIGN KEY(matricula) REFERENCES Avion(matricula)
);
