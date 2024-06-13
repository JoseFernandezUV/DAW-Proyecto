-- Modulo Informacion

--tabla Usuario
CREATE TABLE Usuario (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
	Contraseña varchar(8)
);

--tabla Roles
CREATE TABLE Roles (
    ID SERIAL PRIMARY KEY,
    Rol VARCHAR(20) NOT NULL
);

--  tabla Permisos
CREATE TABLE Permisos (
    ID SERIAL PRIMARY KEY,
    Tipo VARCHAR(25) NOT NULL
);

--tabla de roles y permisos 
CREATE TABLE Rolesypermisos(
	Rol_id int,
	Permiso_id int,
	FOREIGN KEY (Rol_id) references Roles(ID),
	FOREIGN KEY (Permiso_id) references Permisos(ID),
	PRIMARY KEY(Rol_id, Permiso_id)
	);

--tabla puestos
CREATE TABLE Puestos (
	ID serial PRIMARY KEY,
	Puesto varchar(100));

--tabla Directorio
CREATE TABLE Directorio (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Telefono VARCHAR(10),
    Correo VARCHAR(50),
    Ubicacion VARCHAR(100),
    FKPuesto int,
	foreign key (FKPuesto) references Puestos(ID)
    
);

--Redes sociales de entidades externas
CREATE TABLE Redessociales(
Entidad varchar(100),
Telefono varchar(10),
Correo varchar(70),
Facebook varchar (100),
Instagram varchar(50),
Pagina varchar(100),
Direccion varchar(100));

	

--tabla tipos
CREATE TABLE Tipos (
	ID SERIAL PRIMARY KEY,
	Tipo Varchar(100)
);
--tabla Repositorio
CREATE TABLE Repositorio (
    ID SERIAL PRIMARY KEY,
    Titulo TEXT NOT NULL,
    Descripcion TEXT,
    URL VARCHAR(100),
    Fecha DATE,
	FKTipo INT,
    FKUsuario int,
	FOREIGN KEY (FKTipo) REFERENCES Tipos(ID),
	FOREIGN KEY (FKUsuario)REFERENCES Usuario(ID)
);
	
CREATE TABLE Repositorioroles(
	fkidrepositorio INT,
	fkrolrepositorio INT,
	FOREIGN KEY (fkidrepositorio) REFERENCES Repositorio(ID),
	FOREIGN KEY (fkrolrepositorio) REFERENCES Roles(ID));

--tabla Definiciones
CREATE TABLE Definiciones (
    ID SERIAL PRIMARY KEY,
    Termino VARCHAR(20) NOT NULL,
    Definicion TEXT NOT NULL,
  	Rol_FK INT,
   FOREIGN KEY (Rol_FK) REFERENCES Roles(ID)
    
);

--tabla Niveles
CREATE TABLE Niveles (
    ID SERIAL PRIMARY KEY,
    Nivel VARCHAR(50) NOT NULL
);

--tabla Áreas
CREATE TABLE Areas (
    ID SERIAL PRIMARY KEY,
    Area VARCHAR(50) NOT NULL
);

--tabla Estadísticas
CREATE TABLE Estadisticas (
    ID SERIAL PRIMARY KEY,
    FKArea INT,
    FKNivel INT,
    Lugar VARCHAR(50),
    Fecha DATE,
    Datos FLOAT,
    Descripcion TEXT,
    FKPermiso INT,
    FOREIGN KEY (FKArea) REFERENCES Areas(ID),
    FOREIGN KEY (FKNivel) REFERENCES Niveles(ID),
    FOREIGN KEY (FKPermiso) REFERENCES Permisos(ID)
);



-- Creación de la tabla Campañas
CREATE TABLE Campañas (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    AreaFK INT,
    NivelFK INT,
	Descripcion TEXT,
    FOREIGN KEY (AreaFK) REFERENCES Areas(ID),
    FOREIGN KEY (NivelFK) REFERENCES Niveles(ID)
);

