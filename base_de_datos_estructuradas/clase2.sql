select schema_name
from information_schema.schemata;

show databases;

-- Para listar todas las tablas dentro de la base de datos "mi_base_de_datos"
-- por ejemplo, para una bse de datos llamada "empresa" seria asi ...
select table_name
from information_schema.tables
where table_schema = "empresa";