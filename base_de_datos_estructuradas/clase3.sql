create database empresa2;

use empresa2;

create table empleados(
    id int primary key,
    nombre VARCHAR(50),
    departamento_id INT,
    salario decimal (10,2),
    fecha_contrato date
);

create table departamentos(
    id int primary key,
    nombre varchar (50),
    presupuesto decimal(12,2)
);