CREATE TABLE Usuario
(
    nick   VARCHAR(60),
    nombre VARCHAR2(60),
    clave  VARCHAR2(40),
    email  VARCHAR2(60),
	CONSTRAINT PK_Usuario PRIMARY KEY(nick)
);

CREATE TABLE Foto
(
    archivo     VARCHAR2(70),
    descripcion VARCHAR2(50),
	CONSTRAINT PK_Foto PRIMARY KEY(archivo)
);

CREATE TABLE Comentario
(
    id    NUMERIC,
    texto VARCHAR(150),
    fecha DATE,
    nick  VARCHAR(60),
	CONSTRAINT PK_Comentario PRIMARY KEY(id),
    FOREIGN KEY(nick) REFERENCES Usuario(nick)
);

CREATE TABLE Aparece
(
    nick    VARCHAR2(60),
    archivo VARCHAR2(70),
    coord   VARCHAR2(50),
	CONSTRAINT PK_Aparece PRIMARY KEY(nick, archivo),
    FOREIGN KEY(nick) REFERENCES Usuario(nick),
    FOREIGN KEY(archivo) REFERENCES Foto(archivo)
);
