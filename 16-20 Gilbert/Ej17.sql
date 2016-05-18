CREATE TABLE Deudor
(
    did    NUMERIC,
    nombre VARCHAR2(20),
    riesgo VARCHAR2(10),
	CONSTRAINT PK_Deudor PRIMARY KEY(did)
);

CREATE TABLE Prestamos
(
    prid      NUMERIC,
    importe   NUMERIC,
    plazo     DATE,
    interes   NUMERIC,
    finalidad VARCHAR2(50),
    did       NUMERIC,
	CONSTRAINT PK_Prestamos PRIMARY KEY(prid),
    CONSTRAINT FK_Prestamos_Deudor FOREIGN KEY(did) REFERENCES Deudor(did)
);

CREATE TABLE Prestador
(
    pid        NUMERIC,
    nombre     VARCHAR2(70),
    disponible NUMERIC,
	CONSTRAINT PK_Prestador PRIMARY KEY(pid)
);

CREATE TABLE Aporta
(
    pid      NUMERIC,
    prid     NUMERIC,
    cantidad NUMERIC,
	CONSTRAINT PK_Aporta PRIMARY KEY(pid, prid)
    CONSTRAINT FK_Prestador FOREIGN KEY(pid) REFERENCES Prestador(pid),
    CONSTRAINT FK_Prestamos FOREIGN KEY(prid) REFERENCES Prestamos(prid)
);
