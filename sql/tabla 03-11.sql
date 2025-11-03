CREATE DATABASE hola;
USE hola

CREATE TABLE ventas(
    id INT PRIMARY KEY,
    producto VARCHAR(100),
    precio VARCHAR(20), -- Almacenado como texto
    cantidad VARCHAR(10), -- Almacenado como texto
    fecha_venta VARCHAR(50)
);

INSERT INTO ventas VALUES 
    (1,'Notebook','1500.50','3','2025-10-1'),
    (2,'Mouse','25.99','5','2025-10-07'),
    (3,'Teclado','75.00','3','2025-10-13'),
    (4,'Monitor','450.75','3','2025-10-20');

-- Calcular el total de ventas por producto
SELECT producto,round(CAST(precio as decimal(10,2))*CAST(cantidad as decimal(10,2)),2)  as total from ventas;

-- Mostrar todos los productos vendedidos entre el 5 y el 15 de octubre del 2025(Filtrar por rango de fechas)
SELECT * from ventas WHERE cast(fecha_venta as date) > '2025-10-05' and cast(fecha_venta as date) < '2025-10-15';
SELECT * from ventas WHERE cast(fecha_venta as date) BETWEEN '2025-10-05' and '2025-10-15';