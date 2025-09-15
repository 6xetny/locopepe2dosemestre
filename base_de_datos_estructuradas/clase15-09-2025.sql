-- Insertar datos en una tabla 

create database empresa3;

use empresa3;

create table usuarios(
    id int auto_increment primary key, 
    nombre varchar (50),
    email varchar (100)
);

-- Insercion de datos (el ID se genera automaticamente)
insert into usuarios(nombre, email)
values ('Fernando Pérez', 'fp@email.com'),
        ('Antonieta García', 'ag@email.com');

-- resultado : ID 1 y 2 se asignan automaticamente

CREATE TABLE productos(
    codigo int auto_increment primary key,
    nombre varchar(100),
    precio decimal(10,2)
) auto_increment = 1000;

insert into productos(nombre, precio)
values ('Laptop', 899.99),
        ('Mouse', 25.50);

-- los codigos comenzaran desde 1000, 1001, etc.

-- configurar el incremento de 5 en 5 la clausula (set session) indica que la
-- configuracion se aplica solo a la sesion actual del usuario, no de forma permanente
set session auto_increment_increment = 5;
set session auto_increment_offset = 1;

create table pedidos(
    numero_pedido int auto_increment primary key,
    fecha date, 
    cliente_id int 
);

insert into pedidos (fecha, cliente_id)
values ('2024-01-15', 1),
        ('2024-01-16', 2),
        ('2024-01-17', 3);

-- Generara : 1,6, 11, 16, etc.