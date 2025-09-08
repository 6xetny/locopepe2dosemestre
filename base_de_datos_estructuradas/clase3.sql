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

insert into departamentos(id, nombre, presupuesto) values(0,'Ventas',12000000);
insert into departamentos(id, nombre, presupuesto) values(1,'Contabilidad',14000000);

insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(0,'P1P3LG', 0, 2000000,'2024-09-11');
insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(1,'CeciliaGames', 1, 1000000,'2025-09-12');
insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(2,'6xet', 2, 2000000,'2024-10-13');
insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(3,'MeLlamoCesarjsjs', 3, 500000,'2024-11-14');

create view empleados_alto_salario AS 
    select id, nombre, salario
    from empleados
    where salario > 1000000;

create view empleados_nuevos as 
    select nombre, fecha_contrato, salario
    from empleados
    where year (fecha_contrato)= year(curdate());