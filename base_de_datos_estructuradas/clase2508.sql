CREATE DATABASE empresa;

USE empresa; 

CREATE TABLE personal
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salario INT,
    departamento VARCHAR(100) NOT NULL,
    fecharegistro DATE
);

CREATE TABLE productos 
(
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombreproducto VARCHAR(255) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    fechacreacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

/* añadir una nueva columna */
-- ALTER TABLE nombre_tabla 
-- ADD nombre_columna tipo_de_dato [restricciones];

/* Modificar una columna existen */
-- ALTER TABLE nombre_tabla
-- ALTER COLUMN nombre_columna nuevo_tipo_de_dato [restricciones];

/* Eliminar una columna */ 
-- ALTER TABLE nombre_tabla
-- DROP COLUMN nombre_columna;

-- ALTER TABLE personal
-- ADD telefono VARCHAR(20);

-- ALTER TABLE personal
-- DROP COLUMN fecharegistro;

-- Eliminar tabla "productos"
-- DROP TABLE productos;

-- EN resumen CREATE construye, ALTER modifica y DROP elimina

-- Insertar un registro especificando columnas 
INSERT INTO personal(nombre, apellido, salario, departamento)
 VALUES ('Juan','Pérez',700000,'Ventas');

-- insertar multiples registros 
INSERT INTO personal(nombre, apellido, salario, departamento)
 VALUES ('María','García',650000,'Marketing'),
   ('Carlos','López',680000,'IT'),
    ('Ana','Martín',620000,'Ventas');

-- insertar sin especificar columnas (debe incluir valores para todas)
INSERT INTO personal
  VALUES (5,'Pedro','Sánchez','ps@gmail.com',900000,'Gerencia','2025-08-21');

INSERT INTO productos
  VALUES (1,'Cuaderno',4500,20,'2025-08-21'),
         (2,'Lápiz',2800,35,'2024-09-11'),
         (3,'Goma',1200,15,'2023-10-31');

-- La setencia  UPDATE modifica registros existentes en una tabla.
-- Actualizar un registro en especifico 
UPDATE personal
SET salario = 750000
WHERE id = 1;

-- Actualizar múltiples columnas 
UPDATE personal
SET salario = salario * 1.10,
    departamento = 'Ventas Senior'
WHERE departamento = 'Ventas' AND
    salario > 700000;

-- Actualizar todos los registros 
UPDATE productos
    SET precio = precio * 1.05;

-- La sentencia DELETE elimina el registro de una tabla 
-- ELIMINAR UN REGISTRO ESPECÍFICO 
DELETE FROM personal
    WHERE id = 3;

-- Eliminar múltiples registros con condición 
DELETE FROM personal
    WHERE salario > 600000 AND
        departamento ='Marketing';

-- Eliminar todos los registro 
DELETE FROM personal;