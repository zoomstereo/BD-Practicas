
/*
*********************************************************************************
* Ejercicio 16
*********************************************************************************
*/

/* Tabla: Agente*/

INSERT INTO Agente(nombreag, tipo) VALUES('Agente 1', 'Tipo 1');
INSERT INTO Agente(nombreag, tipo) VALUES('Agente 2', 'Tipo 2');
INSERT INTO Agente(nombreag, tipo) VALUES('Agente 3', 'Tipo 3');

/* Tabla: Especies*/

INSERT INTO Especies(nombresp, 
                     floracion, 
					 plantacion, 
					 suelo, 
					 exposicion)
VALUES
        ('Especie 1',
		 'Primavera',
		 'Invierno',
		 'Arcilloso',
		 'Moderado');



INSERT INTO Especies(nombresp, 
                     floracion, 
					 plantacion, 
					 suelo, 
					 exposicion)
VALUES
        ('Especie 2',
		 'Verano',
		 'Invierno',
		 'Arenoso',
		 'Moderado');


		
		
INSERT INTO Especies(nombresp, 
                     floracion, 
					 plantacion, 
					 suelo, 
					 exposicion)
VALUES
        ('Especie 3',
		 'Primavera',
		 'Verano',
		 'Arenoso',
		 'Alto');
		 
		 
		 
/* Tabla: Flores*/		 

INSERT INTO Flores(codigo, 
                   nombrefl, 
				   precio, 
				   descr, 
				   foto, 
				   nombresp)
VALUES
        ('FL01',
		 'Azahar',
		 45.10,
		 'El azahar es una flor muy exótica...',
		 '/una/ruta/a/la/foto',
		 'Especie 1');
		 

INSERT INTO Flores(codigo, 
                   nombrefl, 
				   precio, 
				   descr, 
				   foto, 
				   nombresp)
VALUES
        ('FL02',
		 'Rosa',
		 67.12,
		 'La rosa es una flor muy popular en occidente...',
		 '/una/ruta/a/la/foto',
		 'Especie 2');
		 
INSERT INTO Flores(codigo, 
                   nombrefl, 
				   precio, 
				   descr, 
				   foto, 
				   nombresp)
VALUES
        ('FL03',
		 'Flor de cerezo',
		 50.25,
		 'Flor de cerezo es una flor muy popular en Japón...',
		 '/una/ruta/a/la/foto',
		 'Especie 3');

		 
		
/* Tabla: Poliniza*/		
		 
		 
INSERT INTO Poliniza(nombreag, codigo, reclamo) VALUES ('Agente 1', 'FL01', 'none');
INSERT INTO Poliniza(nombreag, codigo, reclamo) VALUES ('Agente 2', 'FL03', 'none'); 
INSERT INTO Poliniza(nombreag, codigo, reclamo) VALUES ('Agente 3', 'FL02', 'none');  
		 


/*
*********************************************************************************
* Ejercicio 17
*********************************************************************************
*/

/* Tabla: Deudor */

INSERT INTO Deudor(did, nombre, riesgo) VALUES(0, 'Juan de los Santos', 'Alto');
INSERT INTO Deudor(did, nombre, riesgo) VALUES(1, 'Antonio De La Maza', 'Bajo');
INSERT INTO Deudor(did, nombre, riesgo) VALUES(2, 'Horacio Vásquez', 'Medio');


/* Tabla: Prestamos */


INSERT INTO Prestamos(prid, 
                      importe, 
					  plazo,
					  interes, 
					  finalidad, 
					  did)
VALUES
        (
		    0,
			12334.47,
			to_date('2016-07-02', 'yyyy-MM-dd'),
			3,
			'Compra de una PC',
			0
		);
		

INSERT INTO Prestamos(prid, 
                      importe, 
					  plazo,
					  interes, 
					  finalidad, 
					  did)
VALUES
        (
		    1,
			383334.47,
			to_date('2016-08-01', 'yyyy-MM-dd'),
			7,
			'Inicial de una casa en Piantini.',
			2
		);


INSERT INTO Prestamos(prid, 
                      importe, 
					  plazo,
					  interes, 
					  finalidad, 
					  did)
VALUES
        (
		    2,
			450634.53,
			to_date('2016-12-12', 'yyyy-MM-dd'),
			6,
			'Compra de un carro.',
			1
		);


/* Tabla: Prestador */


INSERT INTO Prestador(pid, nombre, disponible) VALUES(0, 'Buenaventura Báez', 500000);
INSERT INTO Prestador(pid, nombre, disponible) VALUES(1, 'Juan Isidro Jiménez', 300000);
INSERT INTO Prestador(pid, nombre, disponible) VALUES(2, 'Carlos Morales Languasco', 700000);


/* Tabla: Aporta */

INSERT INTO Aporta(pid, prid, cantidad) VALUES (0, 2, 2300.00);
INSERT INTO Aporta(pid, prid, cantidad) VALUES (1, 1, 5600.00);
INSERT INTO Aporta(pid, prid, cantidad) VALUES (2, 0, 6800.00);


/*
*********************************************************************************
* Ejercicio 18
*********************************************************************************
*/

/* Tabla: Usuario */

INSERT INTO Usuario(nick, nombre, clave, email) VALUES('ASDF', 'Berenjeno Antonio', '343q23', 'jose_ber@hotmail.com');
INSERT INTO Usuario(nick, nombre, clave, email) VALUES('ACDC', 'Juan Andujar', '3311q53', 'and_juan@gmail.com');
INSERT INTO Usuario(nick, nombre, clave, email) VALUES('Alakazam', 'Soraya Rosa', '234sf3d', 'sor_asdf@yahoo.es');

/* Tabla: Foto */

INSERT INTO Foto(archivo, descripcion) VALUES ('/ruta/a/foto1.jpg', 'Descripcion aleatoria 1');
INSERT INTO Foto(archivo, descripcion) VALUES ('/ruta/a/foto2.jpg', 'Descripcion aleatoria 2');
INSERT INTO Foto(archivo, descripcion) VALUES ('/ruta/a/foto3.jpg', 'Descripcion aleatoria 3');

/* Tabla: Comentario */

INSERT INTO Comentario(id, 
                       texto, 
					   fecha, 
					   nick) 
VALUES
            (
			   0, 
			   'Comentario 1', 
			   to_date('2016-04-07', 'yyyy-MM-dd'),
			   'Alakazam'
			);


INSERT INTO Comentario(id, 
                       texto, 
					   fecha, 
					   nick) 
VALUES
            (
			   1, 
			   'Comentario 2', 
			   to_date('2016-03-08', 'yyyy-MM-dd'),
			   'ACDC'
			);


INSERT INTO Comentario(id, 
                       texto, 
					   fecha, 
					   nick) 
VALUES
            (
			   2, 
			   'Comentario 3', 
			   to_date('2016-07-13', 'yyyy-MM-dd'),
			   'ASDF'
			);


/* Tabla: Aparece */

INSERT INTO Aparece(nick, 
                    archivo, 
					coord) 
VALUES
            ('Alakazam', 
			 '/ruta/a/foto2.jpg',
			 '23, 78');


INSERT INTO Aparece(nick, 
                    archivo, 
					coord) 
VALUES
            ('ACDC', 
			 '/ruta/a/foto3.jpg',
			 '56, 73');

INSERT INTO Aparece(nick, 
                    archivo, 
					coord) 
VALUES
            ('ASDF', 
			 '/ruta/a/foto1.jpg',
			 '90, 23');


/*
*********************************************************************************
* Ejercicio 19
*********************************************************************************
*/

/* Pasajero */

INSERT INTO Pasajero(dni, nombre) VALUES ('23433233', 'Elsa pato');
INSERT INTO Pasajero(dni, nombre) VALUES ('09833233', 'Peter');
INSERT INTO Pasajero(dni, nombre) VALUES ('23433657', 'Alex');


/* Avion */

INSERT INTO Avion(matricula, 
                  fabricante, 
			      modelo, 
			      capacidad, 
			      autonomia)
VALUES
            (
			    'A393048D',
				'Boeing',
				'Boeing N394DL',
				200,
				10
			);

INSERT INTO Avion(matricula, 
                  fabricante, 
			      modelo, 
			      capacidad, 
			      autonomia)
VALUES
            (
			    'D393048A',
				'Boeing',
				'Boeing 247',
				150,
				9
			);


INSERT INTO Avion(matricula, 
                  fabricante, 
			      modelo, 
			      capacidad, 
			      autonomia)
VALUES
            (
			    'T393048Y',
				'Airbus',
				'Airbus A300',
				200,
				8
			);


/* Vuelo */

INSERT INTO Vuelo(vid,
                  fecha,
                  origen,
                  destino,
                  matricula)
VALUES
            (
		        0,
				to_date('2015-06-18', 'yyyy-MM-dd'),
				'Tombuctú',
				'Guinea',
				'T393048Y'
			);

INSERT INTO Vuelo(vid,
                  fecha,
                  origen,
                  destino,
                  matricula)
VALUES
            (
		        1,
				to_date('2016-03-20', 'yyyy-MM-dd'),
				'Ámsterdam',
				'Pekín',
				'D393048A'
			);

INSERT INTO Vuelo(vid,
                  fecha,
                  origen,
                  destino,
                  matricula)
VALUES
            (
		        2,
				to_date('2015-02-19', 'yyyy-MM-dd'),
				'San Juan',
				'Guinea',
				'A393048D'
			);

/* Personal */

INSERT INTO Personal(pid,
                     nombre,
                     categoria)
VALUES
            (
			    0,
				'Florian Gonzalez',
				'Categoria 1'
			);


INSERT INTO Personal(pid,
                     nombre,
                     categoria)
VALUES
            (
			    1,
				'Azabache Acevedo',
				'Categoria 2'
			);


INSERT INTO Personal(pid,
                     nombre,
                     categoria)
VALUES
            (
			    2,
				'Tayoto Diaz',
				'Categoria 3'
			);

/* Tripulacion */
			
INSERT INTO Tripulacion(pid, 
                        vid, 
						puesto)		
VALUES
            (
			    0,
				2,
				1
			);			
			
INSERT INTO Tripulacion(pid, 
                        vid, 
						puesto)		
VALUES
            (
			    1,
				1,
				2
			);			
			
INSERT INTO Tripulacion(pid, 
                        vid, 
						puesto)		
VALUES
            (
			    2,
				0,
				3
			);			
			
/* Pasaje */			
			
INSERT INTO Pasaje(vid,
                   dni,
                   asiento,
                   clase)
VALUES
            (
			    2,
				'23433657',
				23,
				'A'
			);		
		
		
INSERT INTO Pasaje(vid,
                   dni,
                   asiento,
                   clase)
VALUES
            (
			    1,
				'23433233',
				15,
				'A'
			);				
			
INSERT INTO Pasaje(vid,
                   dni,
                   asiento,
                   clase)
VALUES
            (
			    0,
				'09833233',
				10,
				'A'
			);					
			
/*
*********************************************************************************
* Ejercicio 20
*********************************************************************************
*/				
			
/* Avion */

INSERT INTO Avion(matricula, 
                  fabricante, 
			      modelo, 
			      capacidad, 
			      autonomia)
VALUES
            (
			    'A393048D',
				'Boeing',
				'Boeing N394DL',
				200,
				10
			);

INSERT INTO Avion(matricula, 
                  fabricante, 
			      modelo, 
			      capacidad, 
			      autonomia)
VALUES
            (
			    'D393048A',
				'Boeing',
				'Boeing 247',
				150,
				9
			);


INSERT INTO Avion(matricula, 
                  fabricante, 
			      modelo, 
			      capacidad, 
			      autonomia)
VALUES
            (
			    'T393048Y',
				'Airbus',
				'Airbus A300',
				200,
				8
			);			

/* Aeropuerto */

INSERT INTO Aeropuerto(aid,
                       nombre,
                       ciudad,
                       pais)
VALUES
            (
			    0,
				'Aeropuerto Las Américas',
				'Santo Domingo',
				'República Dominicana'
			);
			

INSERT INTO Aeropuerto(aid,
                       nombre,
                       ciudad,
                       pais)
VALUES
            (
			    1,
				'Aeropuerto Internacional John F. Kennedy',
				'Nueva York',
				'Estados Unidos'
			);

INSERT INTO Aeropuerto(aid,
                       nombre,
                       ciudad,
                       pais)
VALUES
            (
			    2,
				'Aeropuerto de Londres Heathrow',
				'Londres',
				'Inglaterra'
			);
			
/* Vuelo */

INSERT INTO Vuelo(vid,
                  origen,
                  destino)
VALUES
            (
		        0,
				0,
				1
			);

INSERT INTO Vuelo(vid,
                  origen,
                  destino)
VALUES
            (
		        1,
				1,
				0
			);

INSERT INTO Vuelo(vid,
                  origen,
                  destino)
VALUES
            (
		        2,
				2,
				1
			);
			
/* Asignado */			
			
INSERT INTO Asignado(vid,
                     matricula,
                     fecha)
VALUES
            (
			    2,
				'A393048D',
				to_date('2015-06-18', 'yyyy-MM-dd')
			);					 
			
			
INSERT INTO Asignado(vid,
                     matricula,
                     fecha)
VALUES
            (
			    1,
				'D393048A',
				to_date('2016-03-20', 'yyyy-MM-dd')
			);				
			
INSERT INTO Asignado(vid,
                     matricula,
                     fecha)
VALUES
            (
			    0,
				'T393048Y',
				to_date('2015-02-19', 'yyyy-MM-dd')
			);				
			
			
			







		 
