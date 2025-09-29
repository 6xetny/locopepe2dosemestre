CREATE DATABASE biblioteca;

use biblioteca;

CREATE TABLE libros(
    id_libro int PRIMARY KEY auto_increment = 1000,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    stock INT DEFAULT 0
);

CREATE TABLE estudiantes(
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    carrera VARCHAR(100),
    semestre INT
);

CREATE TABLE prestamos(
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_libro INT,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    estado VARCHAR(20) DEFAULT 'Prestado'
);

-- 3) INSERTACION DE DATOS:
INSERT INTO libros(titulo, isbn, stock)
    values ('El cuervo',9788416160587,10),
       ('El gato negro',8466705668,5),
       ('El corazón delator',9788415356318,3);


INSERT INTO estudiantes(nombre, email, carrera,semestre)
    values('Marcos Suarez','suarezmarco@gmail.com','Informatica'),
        ('Felipe Cheuquehuala','pipecheuquehuala@gmail.com','Informatica'),
        ('Juanito Perez','juanitoperez777@gmail.com','Cyberseguridad');

INSERT INTO prestamos(id_prestamo,id_estudiante,id_libro,fecha_prestamo,fecha_devolucion,estado)
    values('23-09-2025','26-09-2025','Prestado')
        ('23-09-2025','','prestado')

UPDATE prestamos
SET prestado = devuelto
WHERE fecha_devolucion = 29-09-2025;

UPDATE Informatica
SET carrera
WHERE semestre = 1;

SELECT * FROM estudiantes WHERE nombre LIKE 'M%';

SELECT * FROM prestamos WHERE nombre LIKE 'A%';
