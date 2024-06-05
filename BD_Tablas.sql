-- Modulo Informacion
--  tabla Permisos
CREATE TABLE Permisos (
    ID SERIAL PRIMARY KEY,
    Tipo VARCHAR(25) NOT NULL
);

-- Creación de la tabla Roles
CREATE TABLE Roles (
    ID SERIAL PRIMARY KEY,
    Rol VARCHAR(20) NOT NULL,
    Permiso INT,
    FOREIGN KEY (Permiso) REFERENCES Permisos(ID)
);

--tabla Directorio
CREATE TABLE Directorio (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Numero VARCHAR(10),
    Correo VARCHAR(20),
    Direccion VARCHAR(50),
    Cargo INT,
    FOREIGN KEY (Cargo) REFERENCES Cargo(ID)
);



-- Creación de la tabla Usuario
CREATE TABLE Usuario (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Rol INT,
    FOREIGN KEY (Rol) REFERENCES Roles(ID)
);

-- Creación de la tabla Repositorio
CREATE TABLE Repositorio (
    ID SERIAL PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    Descripcion TEXT,
    Tipo VARCHAR(25),
    URL VARCHAR(50),
    Fecha DATE,
    Autor INT,
    FOREIGN KEY (Autor) REFERENCES Usuario(ID)
);

-- Creación de la tabla Definiciones
CREATE TABLE Definiciones (
    ID SERIAL PRIMARY KEY,
    Termino VARCHAR(20) NOT NULL,
    Definicion TEXT NOT NULL,
    Permiso INT,
	Autor INT,
    FOREIGN KEY (Permiso) REFERENCES Permisos(ID),
     FOREIGN KEY (Autor) REFERENCES Usuario(ID)
    
);

--tabla Niveles
CREATE TABLE Niveles (
    ID SERIAL PRIMARY KEY,
    Nivel VARCHAR(255) NOT NULL
);

--tabla Áreas
CREATE TABLE Areas (
    ID SERIAL PRIMARY KEY,
    Area VARCHAR(255) NOT NULL
);

--tabla Estadísticas
CREATE TABLE Estadisticas (
    ID SERIAL PRIMARY KEY,
    Area INT,
    Nivel INT,
    Pais VARCHAR(255),
    Fecha DATE,
    Datos FLOAT,
    Descripcion TEXT,
    Permiso INT,
    FOREIGN KEY (Area) REFERENCES Areas(ID),
    FOREIGN KEY (Nivel) REFERENCES Niveles(ID),
    FOREIGN KEY (Permiso) REFERENCES Permisos(ID)
);



-- Creación de la tabla Campañas
CREATE TABLE Campañas (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Area INT,
    Nivel INT,
    FOREIGN KEY (Area) REFERENCES Areas(ID),
    FOREIGN KEY (Nivel) REFERENCES Niveles(ID)
);

--tabla cargo
CREATE TABLE Cargo(
ID SERIAL PRIMARY KEY,
Nombre Varchar(20),
FKCargo INT));