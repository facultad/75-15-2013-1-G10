CREATE TABLE Hipodromo (
    NombreHipodromo varchar(100) NOT NULL,
    PRIMARY KEY (NombreHipodromo)
);

CREATE TABLE Pista (
    NombreHipodromo varchar(100) NOT NULL,
    NumeroPista tinyint NOT NULL,
    TipoPista tinyint NOT NULL,
    CantidadAndariveles tinyint NOT NULL,
    PRIMARY KEY (NumeroPista),
    CONSTRAINT FK_Pista_NombreHipodromo FOREIGN KEY (NombreHipodromo) REFERENCES Hipodromo(NombreHipodromo)
);

CREATE TABLE Andarivel (
    NumeroPista tinyint NOT NULL,
    NumeroAndarivel tinyint NOT NULL,
    PRIMARY KEY (NumeroPista, NumeroAndarivel),
    INDEX (NumeroAndarivel),
    CONSTRAINT FK_Andarivel_NumeroPista FOREIGN KEY (NumeroPista) REFERENCES Pista(NumeroPista)
);

CREATE TABLE Encuentro (
    NombreHipodromo varchar(100) NOT NULL,
    FechaEncuentro date NOT NULL,
    PRIMARY KEY (FechaEncuentro),
    CONSTRAINT FK_Encuentro_NombreHipodromo FOREIGN KEY (NombreHipodromo) REFERENCES Hipodromo(NombreHipodromo)
);

CREATE TABLE Carrera (
    NumeroCarrera int NOT NULL,
    FechaEncuentro date NOT NULL,
    NumeroPista tinyint NOT NULL,
    GeneroCarrera varchar(1) NULL,
    TipoCarrera varchar(100) NULL,
    DistanciaCarrera int NULL,
    EstadoTiempo varchar(255) NULL,
    EstadoPista varchar(255) NULL,
    PRIMARY KEY (NumeroCarrera),
    CONSTRAINT FK_Carrera_FechaEncuentro FOREIGN KEY (FechaEncuentro) REFERENCES Encuentro(FechaEncuentro),
    CONSTRAINT FK_Carrera_NumeroPista FOREIGN KEY (NumeroPista) REFERENCES Pista(NumeroPista)
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
    INDEX (DisenoGorro),
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
    INDEX (DisenoChaquetilla),
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
    NumeroCarrera int NOT NULL, 
    NumeroAndarivel tinyint NOT NULL, 
    TiempoCarrera double NULL, 
    LastreJockey tinyint NOT NULL DEFAULT 0,
    NumeroEquino int NULL, 
    NumeroLicenciaJockey int NOT NULL,
    TipoLicenciaJockey varchar(100) NOT NULL, 
    DisenoChaquetilla varchar(100) NULL, 
    DisenoGorro varchar(100) NULL, 
    INDEX (NumeroLicenciaJockey, TipoLicenciaJockey),
    PRIMARY KEY (NumeroCarrera, NumeroAndarivel),
    INDEX (DisenoChaquetilla),
    INDEX (DisenoGorro),
    INDEX (NumeroAndarivel),
    CONSTRAINT FK_ParticipacionCarrera_Carrera FOREIGN KEY (NumeroCarrera) REFERENCES Carrera(NumeroCarrera),
    CONSTRAINT FK_ParticipacionCarrera_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino(NumeroEquino),
    CONSTRAINT FK_ParticipacionCarrera_Jockey FOREIGN KEY (NumeroLicenciaJockey, TipoLicenciaJockey) REFERENCES Jockey(NumeroLicenciaJockey, TipoLicenciaJockey),
    CONSTRAINT FK_ParticipacionCarrera_Andarivel FOREIGN KEY (NumeroAndarivel) REFERENCES Andarivel(NumeroAndarivel),
    CONSTRAINT FK_ParticipacionCarrera_DisenoChaquetilla FOREIGN KEY (DisenoChaquetilla) REFERENCES Chaquetilla(DisenoChaquetilla),
    CONSTRAINT FK_ParticipacionCarrera_DisenoGorro FOREIGN KEY (DisenoGorro) REFERENCES Gorro(DisenoGorro)
);

CREATE TABLE Persona (
    DNI int NOT NULL,
    Nombre varchar(100) NOT NULL,
    Apellido varchar (100) NOT NULL,
    PRIMARY KEY (DNI)
);

CREATE TABLE Rol (
    NumeroRol int NOT NULL, 
    DNI int NOT NULL,
    FechaDesde date NOT NULL,
    FechaHasta date NULL,
    PRIMARY KEY (NumeroRol),
    CONSTRAINT FK_Rol_DNI FOREIGN KEY (DNI) REFERENCES Persona(DNI)
);

CREATE TABLE Propietario (
  NumeroRol int NOT NULL,
  PRIMARY KEY (NumeroRol),
  CONSTRAINT FK_Propietario_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Rol(NumeroRol)
);

CREATE TABLE Cuidador (
  NumeroRol int NOT NULL,
  PRIMARY KEY (NumeroRol),
  CONSTRAINT FK_Cuidador_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Rol(NumeroRol)
);

CREATE TABLE Entrenador (
    NumeroRol int NOT NULL,
    NumeroLicenciaEntrenador int NOT NULL,
    PRIMARY KEY (NumeroRol),
    CONSTRAINT FK_Entrenador_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Rol(NumeroRol)
);

CREATE TABLE Categoria (
    NombreCategoria varchar(100) NOT NULL,
    PRIMARY KEY (NombreCategoria)
);

CREATE TABLE Jockey (
    NumeroRol int NOT NULL, 
    TipoLicenciaJockey varchar(100) NOT NULL, 
    NumeroLicenciaJockey int NOT NULL,
    Peso double NOT NULL, 
    NombreCategoria varchar(100) NOT NULL,
    PRIMARY KEY (NumeroRol),
    INDEX (NumeroLicenciaJockey, TipoLicenciaJockey),
    CONSTRAINT FK_Jockey_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Rol(NumeroRol),
    CONSTRAINT FK_Jockey_NombreCategoria FOREIGN KEY (NombreCategoria) REFERENCES Categoria(NombreCategoria)
);

CREATE TABLE Possee (
    NumeroRol int NOT NULL, 
    NumeroEquino int NOT NULL,
    PRIMARY KEY (NumeroRol, NumeroEquino),
    CONSTRAINT FK_Posee_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Propietario(NumeroRol),
    CONSTRAINT FK_Posee_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino (NumeroEquino)
);

CREATE TABLE Cuida (
    NumeroRol int NOT NULL, 
    NumeroEquino int NOT NULL,
    PRIMARY KEY (NumeroRol, NumeroEquino),
    CONSTRAINT FK_Cuida_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Cuidador(NumeroRol),
    CONSTRAINT FK_Cuida_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino (NumeroEquino)
);

CREATE TABLE Entrena (
    NumeroRol int NOT NULL, 
    NumeroEquino int NOT NULL,
    PRIMARY KEY (NumeroRol, NumeroEquino),
    CONSTRAINT FK_Entrena_NumeroRol FOREIGN KEY (NumeroRol) REFERENCES Entrenador(NumeroRol),
    CONSTRAINT FK_Entrena_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino (NumeroEquino)
);

