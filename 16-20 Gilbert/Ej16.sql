CREATE TABLE Especies
(
    nombresp   VARCHAR2(20) PRIMARY KEY,
    floracion  VARCHAR2(20),
    plantacion VARCHAR2(20),
    suelo      VARCHAR2(20),
    exposicion VARCHAR2(20)
);

CREATE TABLE Flores
(
    codigo   VARCHAR2(20) PRIMARY KEY,
    nombrefl VARCHAR2(20),
    precio   NUMERIC,
	descr     VARCHAR2(80),
	foto     VARCHAR2(80),
    nombresp VARCHAR2(20),
    FOREIGN KEY(nombresp) REFERENCES Especies(nombresp)
);

CREATE TABLE Agente
(   
    nombreag VARCHAR2(20) PRIMARY KEY,
    tipo     VARCHAR2(20)
);

CREATE TABLE Poliniza
(
    nombreag VARCHAR2(20) ,
    codigo   VARCHAR2(20),
    reclamo  VARCHAR2(20),
	CONSTRAINT PK_Poliniza PRIMARY KEY(nombreag, codigo),
    FOREIGN KEY(nombreag) REFERENCES Agente(nombreag),
    FOREIGN KEY(codigo) REFERENCES Flores(codigo)
);

