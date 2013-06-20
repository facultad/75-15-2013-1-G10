INSERT INTO Hipodromo (NombreHipodromo) VALUES ('Palermo');
INSERT INTO Hipodromo (NombreHipodromo) VALUES ('San Isidro');

INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (1, 'Palermo', 'Grande', 6);
INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (2, 'Palermo', 'Chica', 4);
INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (1, 'San Isidro', 'Chica', 3);
INSERT INTO Pista (NumeroPista, NombreHipodromo, TipoPista,CantidadAndariveles) VALUES (2, 'San Isidro', 'Grande', 6);

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
INSERT INTO Encuentro (NombreHipodromo, FechaEncuentro, NumeroEncuentro) VALUES ('San Isidro', '05-05-2013', 2);

INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (1, 'A');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (2, 'B');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (3, 'C');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (4, 'D');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (5, 'E');
INSERT INTO CondicionInscripcion (IdCondicionInscripcion, DescripcionCondicion) VALUES (6, 'F');

INSERT INTO Pelaje (NombrePelaje) VALUES ('Marron');
INSERT INTO Pelaje (NombrePelaje) VALUES ('Negro');
INSERT INTO Pelaje (NombrePelaje) VALUES ('Marron y Negro');

INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (1, 'H', 'Marron y Negro', '02-02-1980', 450);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (2, 'M', 'Marron y Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (3, 'M', 'Marron', '02-02-1980', 390);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (4, 'H', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (5, 'H', 'Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (6, 'H', 'Marron y Negro', '02-02-1980', 400);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (7, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (8, 'M', 'Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (9, 'M', 'Negro', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (10, 'H', 'Marron', '02-02-1980', 400);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (11, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (12, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (13, 'H', 'Marron', '02-02-1980', 390);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (14, 'M', 'Marron', '02-02-1980', 420);
INSERT INTO Equino (NumeroEquino, Genero, NombrePelaje, FechaNacimiento, Peso)
VALUES (15, 'H', 'Marron y Negro', '02-02-1980', 420);

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

