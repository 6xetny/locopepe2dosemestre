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
insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(1,'ZekiraGames', 1, 1000000,'2024-12-07');
insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(2,'6xet', 0, 2000000,'2024-10-13');
insert into empleados(id, nombre, departamento_id, salario,fecha_contrato) values(3,'MeLlamoCesarjsjs', 1, 500000,'2024-11-14');

-- vista simple: empleados con salario alto:
create view empleados_alto_salario AS 
    select id, nombre, salario
    from empleados
    where salario > 1000000;

-- vista simple: empleados nuevos:
create view empleados_nuevos as 
    select nombre, fecha_contrato, salario
    from empleados
    where year (fecha_contrato)= year(curdate());

-- vista compleja: empleados con información del departamento
create view empleados_detalles as 
    select 
        e.id,
        e.nombre as empleado,
        e.salario,
        d.nombre as departamento,
        d.presupuesto,
        case 
            when e.salario > 1200000 then 'Alto'
            when e.salario > 900000 then 'Medio'
            else 'Bajo'
        end as nivel_salario
        from empleados e 
        inner join departamentos d on e.departamento_id= d.id;

-- usar como una tabla normal 
select * from empleados_alto_salario;

-- INSERT (solo vistas simples actualizables)
insert into empleados_alto_salario(id,nombre, salario)
    values (200,'PIP3LG', 1550000);

-- UPDATE 
update empleados_alto_salario
    set salario = salario * 1.1 
    where id = 10;

-- DELETE
delete from empleados_alto_salario
    where salario < 1100000;

-- Elimina la vistas empleados_alto_salario
drop view empleados_alto_salario;