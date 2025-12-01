DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    lugar_nacimiento VARCHAR(200),
    premio_nobel BOOLEAN,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE libros (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    editorial VARCHAR(200),
    fecha_publicacion DATE,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO autores (nombre, lugar_nacimiento, premio_nobel) 
VALUES 
  ('Gabriel García Márquez', 'Aracataca, Colombia', 1),
  ('Mario Vargas Llosa', 'Arequipa, Perú', 1),
  ('Isabel Allende', 'Lima, Perú', 0);

INSERT INTO libros (titulo, editorial, fecha_publicacion) 
VALUES 
  ('Cien años de soledad', 'Editorial Sudamericana', '1967-05-30'),
  ('La ciudad y los perros', 'Seix Barral', '1963-01-01'),
  ('La casa de los espíritus', 'Plaza & Janés', '1982-01-01');



/*
DROP DATABASE IF EXISTS escuela;

CREATE DATABASE escuela;
USE escuela;


CREATE TABLE alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    localidad VARCHAR(200),
    fecha_nacimiento DATE,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ALTER TABLE alumnos ADD COLUMN imagen VARCHAR(200) AFTER descripcion;

INSERT INTO alumnos (nombre, localidad, fecha_nacimiento) 
VALUES 
  ('José', 'Montilla', '2000-01-01'),
  ('Juan', 'Lucena', '2000-01-01'),
  ('Ana', 'Lucena', '2000-01-01');


  CREATE TABLE profesores (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    especialidad VARCHAR(200),
    estado_civil VARCHAR(200),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ALTER TABLE profesores ADD COLUMN imagen VARCHAR(200) AFTER descripcion;

INSERT INTO profesores (nombre, especialidad, estado_civil) 
VALUES 
  ('José Profe', 'Matemáticas', 'Casado'),
  ('Juan Profe', 'Lengua', 'Casado'),
  ('Ana Profe', 'Inglés', 'Casado');

*/