-- Crear un sinonimo privado
CREATE SYNONYM nombre_sinonimo FOR esquema.objeto;

-- Crear un sinonimo publico 
Create public SYNONYM nombre_sinonimo FOR esquema.objeto;

-- eliminar un sinonimo 
DROP SYNONYM nombre_sinonimo;
DROP public SYNONYM nombre_sinonimo;

-- Consultar sinonimos existentes 

--Sinonimos privados del usuario

select



/* 
Cuando se utiliza los sinonimos en sql

- Se utilizan en las sentencias SQL (select, insert, update, delate) como si fueran el nombre del objeto real
- Cuando necesitas simplificar nombres largos de objetos 
- Al migrar aplicaciones entre esquemas o base de datos 
- Para abstraer la ubicacion fisica de los objetos 
- Cuando quiere ocultar la estructura real de la base de datos 

Por que se usan los sinonimos en SQl

-Simplicidad: Evitar escribir nombres largos con esquema 
-Transparencia: Ocultar la ubicacion real del objeto
- Seguridad: No exponer nombres reales de objetos 
- Flexibilidad: Cambiar objetos sub