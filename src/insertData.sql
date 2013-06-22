INSERT INTO Hipodromo (NombreHipodromo) VALUES ('Palermo');
INSERT INTO Hipodromo (NombreHipodromo) VALUES ('San Isidro');

INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (1, 'Palermo', 'Grande', 6);
INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (2, 'Palermo', 'Chica', 4);
INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (1, 'San Isidro', 'Chica', 3);
INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (2, 'San Isidro', 'Grande', 4);

INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 1, 1);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 1, 2);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 1, 3);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 1, 4);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 1, 5);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 1, 6);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 2, 1);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 2, 2);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 2, 3);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('Palermo', 2, 4);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 1, 1);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 1, 2);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 1, 3);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 2, 1);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 2, 2);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 2, 3);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 2, 4);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 2, 5);
INSERT INTO Andarivel (NombreHipodromo, NumeroPista, NumeroAndarivel) VALUES ('San Isidro', 2, 6);

INSERT INTO Encuentro (NombreHipodromo, FechaEncuentro, NumeroEncuentro) VALUES ('Palermo', '02-02-2013', 1);
INSERT INTO Encuentro (NombreHipodromo, FechaEncuentro, NumeroEncuentro) VALUES ('Palermo', '03-03-2013', 2);
INSERT INTO Encuentro (NombreHipodromo, FechaEncuentro, NumeroEncuentro) VALUES ('San Isidro', '04-04-2013', 1);
INSERT INTO Encuentro (NombreHipodromo, FechaEncuentro, NumeroEncuentro) VALUES ('San Isidro', '05-05-2014', 2);

INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (1, 'A');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (2, 'B');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (3, 'C');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (4, 'D');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (5, 'E');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (6, 'F');

INSERT INTO Carrera (FechaEncuentro, NumeroPista, NumeroCarrera, GeneroCarrera, TipoCarrera, DistanciaCarrera, EstadoTiempo, EstadoPista, IdCondicionInscripcion, HoraCarrera) VALUES ('02-02-2013', 1, 1, 'H', 'Perdedores', 800, 'Bueno', 'Muy Bueno', 1, '18:00');
INSERT INTO Carrera (FechaEncuentro, NumeroPista, NumeroCarrera, GeneroCarrera, TipoCarrera, DistanciaCarrera, EstadoTiempo, EstadoPista, IdCondicionInscripcion, HoraCarrera) VALUES ('03-03-2013', 2, 2, 'H', 'Ganadores', 800, 'Bueno', 'Regular', 5, '15:00');
INSERT INTO Carrera (FechaEncuentro, NumeroPista, NumeroCarrera, GeneroCarrera, TipoCarrera, DistanciaCarrera, EstadoTiempo, EstadoPista, IdCondicionInscripcion, HoraCarrera) VALUES ('03-03-2013', 1, 3, 'H', 'Perdedores', 800, 'Regular', 'Regular', 2, '10:00');
INSERT INTO Carrera (FechaEncuentro, NumeroPista, NumeroCarrera, GeneroCarrera, TipoCarrera, DistanciaCarrera, EstadoTiempo, EstadoPista, IdCondicionInscripcion, HoraCarrera) VALUES ('04-04-2013', 2, 4, 'H', 'Perdedores', 800, 'Regular', 'Bueno', 3, '8:00');
INSERT INTO Carrera (FechaEncuentro, NumeroPista, NumeroCarrera, GeneroCarrera, TipoCarrera, DistanciaCarrera, EstadoTiempo, EstadoPista, IdCondicionInscripcion, HoraCarrera) VALUES ('04-04-2013', 2, 5, 'M', 'Ganadores', 800, 'Muy Bueno', 'Muy Bueno', 4, '18:00');

INSERT INTO Pelaje (NombrePelaje) VALUES ('Marron');
INSERT INTO Pelaje (NombrePelaje) VALUES ('Negro');
INSERT INTO Pelaje (NombrePelaje) VALUES ('Marron y Negro');

INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (1, 'H', 'Marron y Negro', '02-02-1980', 450);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (2, 'M', 'Marron y Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (3, 'M', 'Marron', '02-02-1980', 390);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (4, 'H', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (5, 'H', 'Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (6, 'H', 'Marron y Negro', '02-02-1980', 400);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (7, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (8, 'M', 'Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (9, 'M', 'Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (10, 'H', 'Marron', '02-02-1980', 400);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (11, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (12, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (13, 'H', 'Marron', '02-02-1980', 390);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (14, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso) VALUES (15, 'H', 'Marron y Negro', '02-02-1980', 420);

INSERT INTO Stud (NombreStud) VALUES ('Stud de Sebastian');
INSERT INTO Stud (NombreStud) VALUES ('Stud de Milton');
INSERT INTO Stud (NombreStud) VALUES ('Stud de Agustin');
INSERT INTO Stud (NombreStud) VALUES ('Stud de Yamila');

INSERT INTO Color (Color) VALUES ('Rojo');
INSERT INTO Color (Color) VALUES ('Azul');
INSERT INTO Color (Color) VALUES ('Negro');
INSERT INTO Color (Color) VALUES ('Blanco');
INSERT INTO Color (Color) VALUES ('Amarillo');
INSERT INTO Color (Color) VALUES ('Verde');

INSERT INTO ColorStud (NombreStud, Color) VALUES ('Stud de Sebastian', 'Azul');
INSERT INTO ColorStud (NombreStud, Color) VALUES ('Stud de Milton', 'Negro');
INSERT INTO ColorStud (NombreStud, Color) VALUES ('Stud de Agustin', 'Rojo');
INSERT INTO ColorStud (NombreStud, Color) VALUES ('Stud de Yamila', 'Verde');

INSERT INTO Gorro (NombreStud, DisenoGorro) VALUES ('Stud de Sebastian', 'Rayas Verticales');
INSERT INTO Gorro (NombreStud, DisenoGorro) VALUES ('Stud de Milton', 'Rayas Diagonales');
INSERT INTO Gorro (NombreStud, DisenoGorro) VALUES ('Stud de Agustin', 'Liso');
INSERT INTO Gorro (NombreStud, DisenoGorro) VALUES ('Stud de Yamila', 'Cuadros');

INSERT INTO ColorGorro (NombreStud, DisenoGorro, Color) VALUES ('Stud de Sebastian', 'Rayas Verticales', 'Azul');
INSERT INTO ColorGorro (NombreStud, DisenoGorro, Color) VALUES ('Stud de Milton', 'Rayas Diagonales', 'Negro');
INSERT INTO ColorGorro (NombreStud, DisenoGorro, Color) VALUES ('Stud de Agustin', 'Liso', 'Rojo');
INSERT INTO ColorGorro (NombreStud, DisenoGorro, Color) VALUES ('Stud de Yamila', 'Cuadros', 'Verde');

INSERT INTO Chaquetilla (NombreStud, DisenoChaquetilla) VALUES ('Stud de Sebastian', 'Rayas Verticales');
INSERT INTO Chaquetilla (NombreStud, DisenoChaquetilla) VALUES ('Stud de Milton', 'Rayas Diagonales');
INSERT INTO Chaquetilla (NombreStud, DisenoChaquetilla) VALUES ('Stud de Agustin', 'Liso');
INSERT INTO Chaquetilla (NombreStud, DisenoChaquetilla) VALUES ('Stud de Yamila', 'Cuadros');

INSERT INTO ColorChaquetilla (NombreStud, DisenoChaquetilla, Color) VALUES ('Stud de Sebastian', 'Rayas Verticales', 'Azul');
INSERT INTO ColorChaquetilla (NombreStud, DisenoChaquetilla, Color) VALUES ('Stud de Milton', 'Rayas Diagonales', 'Negro');
INSERT INTO ColorChaquetilla (NombreStud, DisenoChaquetilla, Color) VALUES ('Stud de Agustin', 'Liso', 'Rojo');
INSERT INTO ColorChaquetilla (NombreStud, DisenoChaquetilla, Color) VALUES ('Stud de Yamila', 'Cuadros', 'Verde');

INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (1, '02-02-2010', '02-02-2012', 'Stud de Sebastian');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (1, '03-03-2013', NULL, 'Stud de Sebastian');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (2, '02-02-2010', '02-02-2012', 'Stud de Yamila');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (3, '02-02-2010', '02-02-2012', 'Stud de Sebastian');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (4, '02-02-2010', '02-02-2012', 'Stud de Milton');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (5, '02-02-2010', '02-02-2012', 'Stud de Agustin');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (6, '02-02-2010', '02-02-2012', 'Stud de Milton');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (7, '02-02-2010', '02-02-2012', 'Stud de Agustin');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (8, '02-02-2010', '02-02-2012', 'Stud de Sebastian');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (9, '02-02-2010', NULL, 'Stud de Yamila');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (10, '02-02-2010', NULL, 'Stud de Agustin');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (11, '02-02-2010', NULL, 'Stud de Milton');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (12, '02-02-2010', NULL, 'Stud de Sebastian');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (13, '02-02-2010', NULL, 'Stud de Agustin');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (14, '02-02-2010', NULL, 'Stud de Milton');
INSERT INTO StudEquino (NumeroEquino, FechaDesde, FechaHasta, NombreStud) VALUES (15, '02-02-2010', NULL, 'Stud de Yamila');

INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('02-02-2013', 1, 1, 43, 1, 'L1', 1, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('02-02-2013', 1, 2, 42, 2, 'L1', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('02-02-2013', 1, 3, 44, 3, 'L2', 1, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('02-02-2013', 1, 4, 39, 4, 'L1', 3, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('02-02-2013', 1, 5, 41, 5, 'L2', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('02-02-2013', 1, 6, 40, 6, 'L3', 1, NULL, NULL, 10, 0.2, 57, 462);

INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 2, 1, 42, 5, 'L2', 1, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 2, 2, 40, 6, 'L1', 3, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 2, 3, 43, 7, 'L3', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 2, 4, 41, 8, 'L3', 1, NULL, NULL, 10, 0.2, 57, 462);

INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 3, 1, 46, 9, 'L1', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 3, 2, 41, 10, 'L2', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('03-03-2013', 3, 3, 42, 11, 'L3', 1, NULL, NULL, 10, 0.2, 57, 462);

INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 4, 1, 45, 12, 'L2', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 4, 2, 43, 13, 'L1', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 4, 3, 42, 14, 'L1', 3, NULL, NULL, 10, 0.2, 57, 462);

INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 5, 1, 40, 15, 'L1', 1, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 5, 2, 50, 9, 'L1', 2, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 5, 3, 43, 10, 'L3', 1, NULL, NULL, 10, 0.2, 57, 462);
INSERT INTO ParticipacionCarrera (FechaEncuentro, NumeroCarrera, NumeroAndarivel, TiempoCarrera, NumeroEquino, NumeroLicenciaJockey, TipoLicenciaJockey, DiseñoChaquetilla, DiseñoGorro, LastreJockey, FechaInscripcion, DiferenciaCuerpos, PesoJockey, PesoEquino)  VALUES ('04-04-2013', 5, 4, 35, 11, 'L2', 1, NULL, NULL, 10, 0.2, 57, 462);


INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (28293213, 'Juan', 'Zarazaza');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (29324321, 'Pepe', 'Zerezeze');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (17939292, 'Jorge', 'Zirizizi');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (19043832, 'Jose', 'Zorozozo');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (29432233, 'Juan', 'Zuruzuzu');

INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (32092432, 'Juan', 'Papapapa');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (13218323, 'Pepe', 'Pepepepe');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (13244223, 'Jorge', 'Pipipipi');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (14940432, 'Jose', 'Popopopo');
INSERT INTO Persona (DNI, Nombre, Apellido) VALUES (29432211, 'Juan', 'Pupupupu');

INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (28293213, 1, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (29324321, 2, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (17939292, 3, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (19043832, 4, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (29432233, 5, '02-02-2012', NULL);

INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (32092432, 6, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (13218323, 7, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (13244223, 8, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (14940432, 9, '02-02-2012', NULL);
INSERT INTO Rol (DNI, NumeroRol, FechaDesde, FechaHasta) VALUES (29432211, 10, '02-02-2012', NULL);

INSERT INTO Categoria (NombreCategoria) VALUES ('Principiante');
INSERT INTO Categoria (NombreCategoria) VALUES ('Intermedio');
INSERT INTO Categoria (NombreCategoria) VALUES ('Experto');

INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (28293213, 1, 'L1', 1, 57, 'Principiante', 'Palermo');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (29324321, 2, 'L1', 2, 59, 'Experto', 'Palermo');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (17939292, 3, 'L2', 1, 56, 'Principiante', 'San Isidro');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (19043832, 4, 'L3', 1, 60, 'Experto', 'Palermo');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (29432233, 5, 'L3', 2, 57, 'Intermedio', 'San Isidro');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (32092432, 6, 'L3', 3, 57, 'Principiante', 'Palermo');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (13218323, 7, 'L1', 3, 59, 'Experto', 'Palermo');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (13244223, 8, 'L2', 2, 56, 'Principiante', 'San Isidro');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (14940432, 9, 'L1', 4, 60, 'Experto', 'Palermo');
INSERT INTO Jockey (DNI, NumeroRol, TipoLicenciaJockey, NumeroLicenciaJockey, Peso, NombreCategoria, HipodromoLicencia) VALUES (29432211, 10, 'L2', 3, 57, 'Intermedio', 'San Isidro');
