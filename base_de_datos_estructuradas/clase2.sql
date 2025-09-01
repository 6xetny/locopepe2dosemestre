select schema_name
from information_schema.schemata;

show databases;

-- Para listar todas las tablas dentro de la base de datos "mi_base_de_datos"
-- por ejemplo, para una bse de datos llamada "empresa" seria asi ...
select table_name
from information_schema.tables
where table_schema = "empresa";

-- XXXXXXXXXXXXXXXXXXXXX

select column_name, 
        data_type,
        is_nullable,
        column_default
from information_schema.columns 
where table_schema = 'empresa' AND 
    table_name = 'personal';

describe empresa.personal;
-- #######################

select index_name, column_name, non_unique, seq_in_index
from information_schema.statistics
where table_schema = 'empresa' and table_name = 'personal';

-- 1x1x1x1x1x1x1x1x1x1

show index
from personal
from empresa;

-- 1x1x1x1x1x1x1x1x1x1

select constraint_name,
    constraint_type
from information_schema.table_constraints
where table_schema = 'empresa' and table_name = 'personal';

-- 1x1x1x1x11x1x1x1x1x1x1

select kcu.constraint_name, kcu.column_name, kcu.referenced_table_name, kcu.referenced_column_name
from information_schema.key_column_usage as kcu
join information_schema.table_constraints as tc on kcu.constraint_name = tc.constraint_name and kcu.table_schema = tc.table_schema 
where tc.constraint_type = 'foreign key' and kcu.table_schema = 'empresa' and kcu.table_name = 'personal';

-- hola :)

"information_schema"