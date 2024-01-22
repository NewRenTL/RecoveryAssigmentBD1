CREATE TABLE IF NOT EXISTS Estudiantes(
      EstudianteID serial primary key,
      nombre VARCHAR(100) NOT NULL ,
      apellido varchar(100) NOT NULL,
      fecha_de_nacimiento DATE NOT null,
      direccion VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Cursos(
    CursoID serial primary key ,
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion text NOT null ,
    horas_de_duracion integer NOT null
);

CREATE TABLE IF NOT EXISTS Inscripciones(
    EstudianteID integer not null ,
    Curso_id integer not null
);

ALTER TABLE inscripciones ADD PRIMARY KEY(EstudianteID,Curso_id);
ALTER TABLE inscripciones ADD CONSTRAINT fk_est_id_ins FOREIGN KEY(estudianteid) REFERENCES Estudiantes(EstudianteID) ON DELETE CASCADE;
ALTER TABLE inscripciones ADD CONSTRAINT fk_crs_id_ins FOREIGN KEY(curso_id) REFERENCES Cursos(CursoID) ON DELETE CASCADE;


INSERT INTO Estudiantes(nombre,apellido,fecha_de_nacimiento,direccion) VALUES
('Diego','Bustamante Palomino','2000-01-01','Lima Peru'),
('Micaela','Burst Brisiade','2001-02-04','Av Miraflores'),
('Juan','Juancho Barno','1999-05-28','Av Marcos'),
('Masta','Busta Palomino','2000-01-01','Lima Peru'),
('Mel','Burst Brisiade','2001-02-04','Av Miraflores'),
('Melissa','Juancho Barno','1999-05-28','Av Marcos'),
('Peri','Busta Palomino','2000-01-01','Lima Peru'),
('Mary','Burst Brisiade','2001-02-04','Av Miraflores'),
('Merimar','Juancho Barno','1999-05-28','Av Marcos'),
('Lucas','Busta Palomino','2000-01-01','Lima Peru');

select * from estudiantes;

INSERT INTO Cursos (nombre_curso, descripcion, horas_de_duracion) VALUES
    ('Introducción a la Programación', 'Curso introductorio de programación', 30),
    ('Diseño Gráfico Digital', 'Curso avanzado de diseño gráfico', 20),
    ('Marketing Digital', 'Estrategias de marketing en línea', 25),
    ('Inglés Intermedio', 'Nivel intermedio de inglés', 15),
    ('Desarrollo Web Full Stack', 'Curso completo de desarrollo web', 40),
    ('Análisis de Datos con Python', 'Curso de análisis de datos utilizando Python', 22),
    ('Finanzas Personales', 'Gestión eficaz de las finanzas personales', 18),
    ('Fotografía Digital', 'Principios básicos de fotografía digital', 35),
    ('Diseño de Videojuegos', 'Curso de diseño y desarrollo de videojuegos', 28),
    ('Inteligencia Artificial', 'Fundamentos de la inteligencia artificial', 33);

select * from cursos;

INSERT INTO Inscripciones (EstudianteID, Curso_id)
VALUES
    (1, 2),
    (2, 5),
    (3, 1),
    (4, 7),
    (5, 1),
    (6, 10),
    (7, 4),
    (8, 8),
    (9, 6),
    (10, 9);

select * from inscripciones;

