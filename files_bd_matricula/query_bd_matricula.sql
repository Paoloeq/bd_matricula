-- Tablas 
CREATE TABLE matriculas(
	idmatricula INT IDENTITY(1,1) PRIMARY KEY,
	idalumno INT FOREIGN KEY REFERENCES alumnos(idalumno),
	grado VARCHAR(30),
	fecha DATE
);


CREATE TABLE personas(
	idpersona INT IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(30),
	apellido VARCHAR(35),
	rut VARCHAR(10),
);

CREATE TABLE alumnos(
	idalumno INT IDENTITY(1,1) PRIMARY KEY,
	idpersona INT FOREIGN KEY REFERENCES personas(idpersona),
	carrera VARCHAR(35),
	facultad VARCHAR(35)
);


CREATE TABLE docentes(
	iddocente INT IDENTITY(1,1) PRIMARY KEY,
	idpersona INT FOREIGN KEY REFERENCES personas(idPersona),
	tipocontrato VARCHAR(20)
);

CREATE TABLE cursos(
	idcurso INT IDENTITY(1,1) PRIMARY KEY,
	iddocente INT FOREIGN KEY REFERENCES docentes(idDocente),
	nombre_curso VARCHAR(50),
	horas INT
);

CREATE TABLE cursos_alumnos(
	idcurso INT,
	idalumno INT,
	FOREIGN KEY(idcurso) REFERENCES cursos(idcurso),
	FOREIGN KEY(idalumno) REFERENCES alumnos(idalumno),
	nota VARCHAR(60)
	PRIMARY KEY (idcurso,idalumno)
);


