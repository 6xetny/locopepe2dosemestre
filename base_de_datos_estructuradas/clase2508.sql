CREATE DATABASE empresa;

USE empresa; 

CREATE TABLE personal
(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salario INT,
    departamento VARCHAR(100),
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
ALTER TABLE nombre_tabla 
  ADD nombre_columna tipo_de_dato [restricciones];

/* Modificar una columna existen */
ALTER TABLE nombre_tabla
  ALTER COLUMN nombre_columna nuevo_tipo_de_dato [restricciones];

/* Eliminar una columna */ 
ALTER TABLE nombre_tabla
DROP COLUMN nombre_columna;

ALTER TABLE personal
  ADD telefono VARCHAR(20);

ALTER TABLE personal
  DROP COLUMN fecharegistro;

-- Eliminar tabla "productos"
DROP TABLE productos;

-- EN resumen CREATE construye, ALTER modifica y DROP elimina

-- Insertar un registro especificando columnas 
INSERT INTO personal(nombre, apellido, salario, departamento)
 VALUES ('Juan','Pérez',700000,'Ventas');

-- insertar multiples registros 
INSERT INTO personal(nombre, apellido, salario, departamento)
 VALUES ('María','García',650000,'Marketing'),
  VALUES ('Carlos','López',680000,'IT'),
   VALUES ('Ana','Martín',620000,'Ventas');

-- insertar sin especificar columnas (debe incluir valores para todas)
INSERT INTO personal
  VALUES (5,'Pedro','Sánchez','ps@gmail.com',900000,'Gerencia','2025-08-21');

