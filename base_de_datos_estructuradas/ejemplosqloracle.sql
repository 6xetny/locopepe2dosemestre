-- Ejemplo 1:

create table clientes(
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR2(100),
    ciudad VARCHAR2(100),
    fecha_registro DATE);


INSERT INTO clientes(id_cliente, nombre, ciudad, fecha_registro) VALUES
    (21,'Juan Pérez','Puerto Montt',TO_DATE('2023-05-15','YYYY-MM-DD')),
    (22,'Ana Gómez','Temuco',TO_DATE('2023-06-20','YYYY-MM-DD')),
    (23,'Luis Martínez','Santiago',TO_DATE('2023-07-01','YYYY-MM-DD')),
    (24,'María Fernández','Temuco',TO_DATE('2023-08-10','YYYY-MM-DD')),
    (25,'Francisca Fuenzalida','Valdivia',TO_DATE('2025-07-09','YYYY-MM-DD'));

-- Crear sinonimo 
CREATE SYNONYM syn_clientes FOR clientes;

-- Selecciona desde el sinonimo
SELECT * FROM syn_clientes;


-- Ejemplo 2:

-- Crear vista simple

CREATE VIEW clientes_temuco AS
select id_cliente, nombre, ciudad
from  CLIENTES  
where ciudad = 'Temuco';

-- Crea sinonimo 
create SYNONYM syn_clientes_temuco FOR clientes_temuco;

-- Selecciona desde el sinonimo 
select * from syn_clientes_temuco;


-- Ejemplo 3:

-- Crear vista simple

CREATE VIEW clientes_a AS
select nombre
from  CLIENTES  
where nombre LIKE 'A%';


-- Crea sinonimo 
CREATE SYNONYM syn_clientes_a FOR clientes_a;

-- Selecciona desde el sinonimo
SELECT * FROM syn_clientes_a;

-- Elimina el sinonimo
DROP SYNONYM syn_clientes_a;