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

