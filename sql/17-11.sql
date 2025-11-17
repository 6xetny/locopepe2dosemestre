-- Crea la base de datos condicionales y tablas

CREATE DATABASE condicionales;

USE condicionales;

CREATE TABLE inventario
    (
    producto VARCHAR(50),
    cantidad INT,
    precio DECIMAL(10,2)
    );

INSERT INTO inventario VALUES
    ('Estufa', 5, 75000),
    ('Sofa', 25, 170000),
    ('Ventilador', 75, 35000),
    ('Lampara', 120, 17000);

CREATE TABLE empleados
    (
    nombre VARCHAR (100),
    sueldo INT,
    antiguedad_años INT,
    departamento VARCHAR (50)
    );

INSERT INTO empleados VALUES
    ('Diego Hernández', 600000, 1, 'Administración'),
    ('Ernesto Ibañez', 750000, 2, 'Ventas'),
    ('Fernando Jorquera', 1200000, 3, 'Administración'),
    ('Gastón Kramer', 2350000, 4, 'Ventas'),
    ('Hugo López', 1600000, 5, 'Logística'),
    ('Ignacia Manríquez', 1250000, 6, 'Logística'),
    ('Josefina Opazo', 950000, 7, 'Compras');

CREATE TABLE clientes
    (
    cliente_id INT,
    nombre VARCHAR (100),
    total_compras INT
    );

INSERT INTO clientes VALUES
    (1, 'Heriberto Fuenzalida', NULL),
    (2, 'Iván Guzmán', 12000),
    (3, 'Mabél López', 300000),
    (4, 'Olga Olivares', 950000),
    (5, 'Renata Salgado', 1500000);


SELECT *,
        CASE
        WHEN antiguedad_años < 2 THEN sueldo * 0.05
        WHEN antiguedad_años BETWEEN 2 AND 5 THEN sueldo * 0.10
        WHEN antiguedad_años > 5 THEN sueldo * 0.15
    END AS bono_extra
FROM empleados;

SELECT 
    cliente_id,
    nombre,
    total_compras,
    CASE
        WHEN total_compras > 1000000 THEN 'VIP'
        WHEN total_compras BETWEEN 5000000 AND 1000000 THEN 'Premium'
        WHEN total_compras BETWEEN 20000 AND 500000 THEN 'Regular'
        WHEN total_compras < 20000 THEN 'Nuevo'
        ELSE 'Nuevo'
    END AS categoria_cliente
FROM clientes;