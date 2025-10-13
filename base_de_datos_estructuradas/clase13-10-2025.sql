create database empresa5;
use empresa5;

create table empleados(
    id int primary key auto_increment,
    nombre varchar(100),
    apellido varchar(100),
    departamento varchar(50),
    fecha_contratacion date
);

-- creacion indice no unico:

create index idx_apellido on empleados(apellido);

-- show index: informacion sobre los indices de una tabla show index from empleados

create table productos(
    id_producto int primary key auto_increment,
    nombre_producto varchar(255),
    categoria varchar(100),
    precio int,
    stock int
);

-- supuesto: la tabla tiene varios miles de registros
-- situacion: frecuentemente buscamos productos por categoria

select * from productos where categoria = "Electronica";

-- para optimizarla creamos un indice no unico en la columna categoria

create index idx_categoria on productos (categoria)

select * from idx_categoria;

-- cuando se ejecuta el select, sql ejecutara automaticamente idx_categoria para encontrar rapidamente todos los productos de la categoria "Electronica"

-- Ejemplo

create table clientes(
    id_cliente int primary key auto_increment,
    nombre varchar(100),
    ciudad varchar(100),
    fecha_registro date
    );

insert into clientes(nombre,ciudad,fecha_registro)
    values  ("Juan Perez","Puerto Montt","2023-05-15"),
            ("Ana Gomez","Arica","2023-06-20"),
            ("Luis Martinez","Santiago","2023-07-01"),
            ("Maria Fernandez","Temuco","2023-08-10");

show index from clientes;

create index idx_ciudad on clientes(ciudad);

show index from clientes;

-- ver uso de indices

select * from sys.schema_unused_indexes;

-- esta consulta se utiliza para recuperar informacion sobre los indices que el sistema de bases de datos ha identificado como no utilizados

-- eliminacion de un indice

drop index idx_ciudad on clientes;

-- planificacion de produccion via (a traves de) matrices (trabajo de funciones d ematrices)