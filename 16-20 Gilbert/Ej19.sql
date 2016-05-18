CREATE TABLE Pasajero
(
    dni    VARCHAR2(25),
    nombre VARCHAR2(70),
	CONSTRAINT PK_Pasajero PRIMARY KEY(dni)
);

CREATE TABLE Avion
(
    matricula  VARCHAR2(25),
    fabricante VARCHAR2(40),
    modelo     VARCHAR2(30),
    capacidad  NUMERIC,
    autonomia  NUMERIC,
	CONSTRAINT PK_Avion PRIMARY KEY(matricula)
);

CREATE TABLE Vuelo
(
    vid       NUMERIC,
    fecha     DATE,
    origen    VARCHAR2(40),
    destino   VARCHAR2(40),
    matricula VARCHAR2(25),
	CONSTRAINT PK_Vuelo PRIMARY KEY(vid),
    CONSTRAINT FK_Vuelo_Avion FOREIGN KEY(matricula) REFERENCES Avion(matricula));

CREATE TABLE Personal
(
    pid       NUMERIC,
    nombre    VARCHAR2(70),
    categoria VARCHAR2(30),
	CONSTRAINT PK_Personal PRIMARY KEY(pid)
);

CREATE TABLE Tripulacion
(
    pid    NUMERIC,
    vid    NUMERIC,
    puesto NUMERIC,
    CONSTRAINT FK_Tripulacion_Personal FOREIGN KEY(pid) REFERENCES Personal(pid),
    CONSTRAINT FK_Tripulacion_Vuelo FOREIGN KEY(vid) REFERENCES Vuelo(vid));

CREATE TABLE Pasaje
(
    vid     NUMERIC,
    dni     VARCHAR2(25),
    asiento NUMERIC,
    clase   VARCHAR2(10),
    CONSTRAINT FK_Pasaje_Vuelo FOREIGN KEY(vid) REFERENCES Vuelo(vid),
    CONSTRAINT FK_Pasaje_Pasajero FOREIGN KEY(dni) REFERENCES Pasajero(dni));
