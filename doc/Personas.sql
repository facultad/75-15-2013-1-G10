CREATE TABLE Persona (
  DNI int NOT NULL,
  Nombre varchar(100) NOT NULL,
  Apellido varchar (100) NOT NULL,
  PRIMARY KEY (DNI)
);

CREATE TABLE Rol (
  DNI int NOT NULL,
  NumeroRol int NOT NULL, 
  FechaDesde date NOT NULL,
  FechaHasta date NULL,
  PRIMARY KEY (DNI, NumeroRol),
  CONSTRAINT FK_Rol_DNI FOREIGN KEY (DNI) REFERENCES Persona(DNI)
);

CREATE TABLE Propietario (
  DNI int NOT NULL,
  NumeroRol int NOT NULL,
  PRIMARY KEY (DNI, NumeroRol),
  CONSTRAINT FK_Propietario_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Rol(DNI, NumeroRol)
);

CREATE TABLE Cuidador (
  DNI int NOT NULL,
  NumeroRol int NOT NULL,
  PRIMARY KEY (DNI, NumeroRol),
  CONSTRAINT FK_Cuidador_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Rol(DNI, NumeroRol)
);

CREATE TABLE Entrenador (
  DNI int NOT NULL,
  NumeroRol int NOT NULL,
  NumeroLicenciaEntrenador int NOT NULL,
  PRIMARY KEY (DNI, NumeroRol),
  CONSTRAINT FK_Entrenador_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Rol(DNI, NumeroRol)
);

CREATE TABLE Categoria (
  NombreCategoria varchar(100) NOT NULL,
  PRIMARY KEY (NombreCategoria)
);

CREATE TABLE Jockey (
  DNI int NOT NULL, 
  NumeroRol int NOT NULL, 
  TipoLicenciaJockey varchar(100) NOT NULL, 
  NumeroLicenciaJockey int NOT NULL,
  Peso double NOT NULL, 
  NombreCategoria varchar(100) NOT NULL,
  PRIMARY KEY (DNI, NumeroRol),
  INDEX (TipoLicenciaJockey, NumeroLicenciaJockey),
  UNIQUE (TipoLicenciaJockey, NumeroLicenciaJockey),
  CONSTRAINT FK_Jockey_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Rol(DNI, NumeroRol),
  CONSTRAINT FK_Jockey_NombreCategoria FOREIGN KEY (NombreCategoria) REFERENCES Categoria(NombreCategoria)
);

CREATE TABLE Possee (
  DNI int NOT NULL, 
  NumeroRol int NOT NULL, 
  NumeroEquino int NOT NULL,
  PRIMARY KEY (DNI, NumeroRol, NumeroEquino),
  CONSTRAINT FK_Posee_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Propietario(DNI, NumeroRol),
  CONSTRAINT FK_Posee_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino (NumeroEquino)
);

CREATE TABLE Cuida (
  DNI int NOT NULL, 
  NumeroRol int NOT NULL, 
  NumeroEquino int NOT NULL,
  PRIMARY KEY (DNI, NumeroRol, NumeroEquino),
  CONSTRAINT FK_Cuida_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Cuidador(DNI, NumeroRol),
  CONSTRAINT FK_Cuida_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino (NumeroEquino)
);

CREATE TABLE Entrena (
  DNI int NOT NULL, 
  NumeroRol int NOT NULL, 
  NumeroEquino int NOT NULL,
  PRIMARY KEY (DNI, NumeroRol, NumeroEquino),
  CONSTRAINT FK_Entrena_DNINumeroRol FOREIGN KEY (DNI, NumeroRol) REFERENCES Entrenador(DNI, NumeroRol),
  CONSTRAINT FK_Entrena_NumeroEquino FOREIGN KEY (NumeroEquino) REFERENCES Equino (NumeroEquino)
);


