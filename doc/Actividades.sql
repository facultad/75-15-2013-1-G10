CREATE TABLE Hipodromo (
  NombreHipodromo varchar(100) NOT NULL,
  PRIMARY KEY (NombreHipodromo)
);

CREATE TABLE Pista (
  NombreHipodromo varchar(100) NOT NULL,
  NumeroPista tinyint NOT NULL,
  TipoPista tinyint NOT NULL,
  CantidadAndariveles tinyint NOT NULL,
  PRIMARY KEY (NombreHipodromo, NumeroPista),
  CONSTRAINT FK_Pista_NombreHipodromo FOREIGN KEY (NombreHipodromo) REFERENCES Hipodromo(NombreHipodromo)
);

CREATE TABLE Andarivel (
  NombreHipodromo varchar(100) NOT NULL,
  NumeroPista tinyint NOT NULL,
  NumeroAndarivel tinyint NOT NULL,
  PRIMARY KEY (NombreHipodromo, NumeroPista, NumeroAndarivel),
  CONSTRAINT FK_Andarivel_NombreHipodromoNumeroPista FOREIGN KEY (NombreHipodromo, NumeroPista) REFERENCES Pista(NombreHipodromo, NumeroPista)
);

CREATE TABLE Encuentro (
  NombreHipodromo varchar(100) NOT NULL,
  FechaEncuentro date NOT NULL,
  NumeroEncuentro int NOT NULL,
  PRIMARY KEY (NombreHipodromo, FechaEncuentro),
  CONSTRAINT FK_Encuentro_NombreHipodromo FOREIGN KEY (NombreHipodromo) REFERENCES Hipodromo(NombreHipodromo)
);

CREATE TABLE Carrera (
  NombreHipodromo varchar(100) NOT NULL,
  FechaEncuentro date NOT NULL,
  NumeroPista tinyint NOT NULL,
  NumeroCarrera int NOT NULL,
  GeneroCarrera varchar(1) NULL,
  TipoCarrera varchar(100) NULL,
  DistanciaCarrera int NULL,
  EstadoTiempo varchar(255) NULL,
  EstadoPista varchar(255) NULL,
  PRIMARY KEY (NombreHipodromo, FechaEncuentro, NumeroPista, NumeroCarrera),
  CONSTRAINT FK_Carrera_NombreHipodromoFechaEncuentro FOREIGN KEY (NombreHipodromo, FechaEncuentro) REFERENCES Encuentro(NombreHipodromo, FechaEncuentro),
  CONSTRAINT FK_Carrera_NombreHipodromoNumeroPista FOREIGN KEY (NombreHipodromo, NumeroPista) REFERENCES Pista(NombreHipodromo, NumeroPista)
);

CREATE TABLE Pelaje (
  NombrePelaje varchar(100) NOT NULL,
  PRIMARY KEY (NombrePelaje)
);

CREATE TABLE Equino (
  NumeroEquino int NOT NULL,
  Genero varchar(1) NULL,
  NombrePelaje varchar(100) NULL,
  PRIMARY KEY (NumeroEquino),
  CONSTRAINT FK_Equino_NombrePelaje FOREIGN KEY (NombrePelaje) REFERENCES Pelaje(NombrePelaje)
);

CREATE TABLE HijoDe (
  NumeroEquino int NOT NULL,
  Padre int NULL,
  Madre int NULL,
  PRIMARY KEY (NumeroEquino),
  CONSTRAINT FK_HijoDe_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino(NumeroEquino),
  CONSTRAINT FK_HijoDe_Padre FOREIGN KEY (Padre) REFERENCES Equino(NumeroEquino),
  CONSTRAINT FK_HijoDe_Madre FOREIGN KEY (Madre) REFERENCES Equino(NumeroEquino)
);

CREATE TABLE Stud (
  NombreStud varchar(100) NOT NULL,
  PRIMARY KEY (NombreStud)
);

CREATE TABLE Color (
  Color varchar(6) NOT NULL,
  PRIMARY KEY (Color)
);

CREATE TABLE ColorStud (
  NombreStud varchar(100) NOT NULL,
  Color varchar(6) NOT NULL,
  PRIMARY KEY (NombreStud, Color),
  CONSTRAINT FK_ColorStud_NombreStud FOREIGN KEY (NombreStud) REFERENCES Stud(NombreStud),
  CONSTRAINT FK_ColorStud_Color FOREIGN KEY (Color) REFERENCES Color(Color)
);

CREATE TABLE Gorro (
  NombreStud varchar(100) NOT NULL,
  DisenoGorro varchar(100) NOT NULL,
  PRIMARY KEY (NombreStud, DisenoGorro),
  CONSTRAINT FK_Gorro_NombreStud FOREIGN KEY (NombreStud) REFERENCES Stud(NombreStud)
);

CREATE TABLE ColorGorro (
  NombreStud varchar(100) NOT NULL,
  DisenoGorro varchar(100) NOT NULL,
  Color varchar(6) NOT NULL,
  PRIMARY KEY (NombreStud, DisenoGorro, Color),
  CONSTRAINT FK_ColorGorro_NombreStudDisenoGorro FOREIGN KEY (NombreStud, DisenoGorro) REFERENCES Gorro(NombreStud, DisenoGorro),
  CONSTRAINT FK_ColorGorro_Color FOREIGN KEY (Color) REFERENCES Color(Color)
);

CREATE TABLE Chaquetilla (
  NombreStud varchar(100) NOT NULL,
  DisenoChaquetilla varchar(100) NOT NULL,
  PRIMARY KEY (NombreStud, DisenoChaquetilla),
  CONSTRAINT FK_Chaquetilla_NombreStud FOREIGN KEY (NombreStud) REFERENCES Stud(NombreStud)
);

CREATE TABLE ColorChaquetilla (
  NombreStud varchar(100) NOT NULL, 
  DisenoChaquetilla varchar(100) NOT NULL, 
  Color varchar(6) NOT NULL,
  PRIMARY KEY (NombreStud, DisenoChaquetilla, Color),
  CONSTRAINT FK_ColorChaquetilla_NombreStudDisenoChaquetilla FOREIGN KEY (NombreStud, DisenoChaquetilla) REFERENCES Chaquetilla(NombreStud, DisenoChaquetilla),
  CONSTRAINT FK_ColorChaquetilla_Color FOREIGN KEY (Color) REFERENCES Color(Color)
);

CREATE TABLE StudEquino (
  NumeroEquino int NOT NULL, 
  FechaDesde date NOT NULL, 
  FechaHasta date NULL, 
  NombreStud varchar(100) NULL,
  PRIMARY KEY (NumeroEquino, FechaDesde),
  CONSTRAINT FK_StudEquino_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino(NumeroEquino)
);

CREATE TABLE ParticipacionCarrera (
  NombreHipodromo varchar(100) NOT NULL, 
  FechaEncuentro date NOT NULL, 
  NumeroPista tinyint NOT NULL, 
  NumeroCarrera int NOT NULL, 
  NumeroAndarivel tinyint NOT NULL, 
  TiempoCarrera double NULL, 
  NumeroEquino int NULL, 
  NumeroLicenciaJockey int NOT NULL,
  TipoLicenciaJockey varchar(100) NOT NULL, 
  DiseñoChaquetilla varchar(100) NULL, 
  DiseñoGorro varchar(100) NULL, 
  LastreJockey tinyint NOT NULL DEFAULT 0,
  INDEX (NumeroLicenciaJockey, TipoLicenciaJockey),
  PRIMARY KEY (NombreHipodromo, FechaEncuentro, NumeroPista, NumeroCarrera, NumeroAndarivel),
  CONSTRAINT FK_ParticipacionCarrera_Carrera FOREIGN KEY (NombreHipodromo, FechaEncuentro, NumeroPista, NumeroCarrera) REFERENCES Carrera(NombreHipodromo, FechaEncuentro, NumeroPista, NumeroCarrera),
  CONSTRAINT FK_ParticipacionCarrera_Andarivel FOREIGN KEY (NombreHipodromo, NumeroPista, NumeroAndarivel) REFERENCES Andarivel(NombreHipodromo, NumeroPista, NumeroAndarivel),
  CONSTRAINT FK_ParticipacionCarrera_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino(NumeroEquino),
  CONSTRAINT FK_ParticipacionCarrera_Jockey FOREIGN KEY (NumeroLicenciaJockey, TipoLicenciaJockey) REFERENCES Jockey(NumeroLicenciaJockey, TipoLicenciaJockey)
);