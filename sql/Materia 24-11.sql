/* 3.3 - Funciones de gruó y agrupamiento de filas usando las clausulas GROUP BY y HAVING 

¿Que es GROUP BY?

GROUP BY es una cláusula de SQL que agrupa filas que tienen los mismos valores en las 
columnas especificadas, permitiendo aplicar funciones de agregación (COUNT, SUM, AVG, 
MAX, MIN) sobre cada grupo. Básicamente, convierte múltiples filas en una sola fila resumen 
por grupo. 

-- Elementos que componen GROUP BY 
SELECT columna1, columna2, … , funciones_de_agregación() 
FROM tabla 
WHERE condición 
GROUP BY columna1, columna2, ... 
HAVING condición_de_agregación() 
ORDER BY columna1, columna2, …;

-- Componentes del GROUP BY 
- SELECT : Columnas a mostrar (deben estar en GROUP BY o ser funciones de agregación). 
- Funciones de agregación : COUNT(), SUM(), AVG(), MAX(), MIN(). 
- WHERE : Filtra filas antes de agrupar (opcional). 
- GROUP BY : Define las columnas por las cuales agrupar. 
- HAVING : Filtra grupos después de la agregación (opcional). 
- ORDER BY : Ordena el resultado final (opcional). 

-- Funciones de Agregación 
En SQL las funciones de agregación procesan un conjunto de valores y devuelven un único 
resultado. 

- COUNT() : Es una función de agregación que se utiliza para contar el número de filas que 
        cumplen un criterio específico. Se usa para obtener el tamaño de un conjunto de 
        datos o subconjunto dentro de una base de datos. 

- SUM() : La función SUM() se utiliza para calcular la suma de un conjunto de valores en 
        una columna numérica. Es una función de agregación que devuelve un único valor 
        total, útil para obtener totales como ventas, ingresos o presupuestos. 

- AVG() : En SQL, AVG() es una función de agregación que calcula el valor promedio de 
        una columna numérica. Se obtiene sumando todos los valores de la columna y 
        dividiendo el resultado por la cantidad de valores no nulos. 

- MAX() : Es una función de agregación que devuelve el valor más alto de un conjunto de 
        valores en una columna específica. Se utiliza frecuentemente para encontrar el 
        valor máximo de datos numéricos, fechas o cadenas de texto. 

- MIN() : Es una función de agregación que se utiliza para encontrar el valor más bajo dentro 
        de un conjunto de valores en una columna específica. Puede aplicarse a datos 
        numéricos, fechas y cadenas de texto para identificar el valor más pequeño, como 
        el precio más bajo o la fecha más temprana. 


-- ¿Como se usa GROUP BY?
La sintaxis básica requiere que todas las columnas en SELECT que no sean funciones de 
agregación estén incluidas en GROUP BY. 

-- Sintaxis correcta 
Consulta la cantidad de personas que trabajan en cada departamento 
    SELECT departamento, COUNT(*) as total 
    FROM personal 
    GROUP BY departamento; 

-- Error : Semánticamente incorrecto (nombre no está en GROUP BY) 
La respuesta recibida incluye un nombre, lo que la hace incoherente. 
    SELECT departamento, nombre, COUNT(*) 
    FROM personal 
    GROUP BY departamento; 

-- Sintaxis correcta 
Solo retorna aquellos departamentos que tienen más de 170 empleados 
    SELECT departamento, COUNT(*) as total 
    FROM personal 
    GROUP BY departamento 
    HAVING COUNT(*) > 170;

-- Error : Sintaxis incorrecta (WHERE no puede usar funciones de agregación) 
    SELECT departamento, COUNT(*) as total 
    FROM personal 
    WHERE COUNT(*) > 5 
    GROUP BY departamento; 

-- REGLA DE USO 
Si usa GROUP BY, cualquier columna en el SELECT debe ser ... 

- Una de las columnas por las que se está agrupando (las que están en la cláusula GROUP BY). 
- O bien, una función de agregación (como SUM(), COUNT(), etc.). 

-- DIFERENCIA CLAVE: WHERE V/S HAVING

-   WHERE filtra filas individuales antes de que se agrupen. 
    Ejemplo : “Seleccionar las ventas de todas las tiendas, pero solo de productos de la categoría 
    'Electrónica' ”. 
    Aquí, [ WHERE categoria = 'Electrónica' ] se aplica primero.

-   HAVING filtra grupos enteros después de que se han agrupado. 
    Ejemplo : “Seleccionar el total de ventas por tienda, pero solo de aquellas tiendas cuyo total 
    de ventas sea mayor a $100000”. 
    Aquí, [ HAVING SUM(ventas) > 100000 ] se aplica al final, sobre los grupos ya calculados.

-- ¿CUANDO SE USA GROUP BY?
Se usa cuando necesitas ...

- Calcular totales, promedios o conteos por categorías. 
- Resumir datos de múltiples filas en estadísticas. 
- Encontrar valores máximos / mínimos por grupo. 
- Generar reportes 
- Analizar datos agrupados por criterios específicos. 

-- Ejemplo 1 : Contar personas por ciudad 
    SELECT ciudad, COUNT(*) as cantidad 
    FROM personal 
    GROUP BY ciudad; 

-- Ejemplo 2 : Ventas totales por vendedor 
    SELECT vendedor, SUM(precio) as ventas_totales 
    FROM ventas 
    GROUP BY vendedor 
    ORDER BY ventas_totales DESC; 

-- Ejemplo 3 : Promedio de sueldo por ciudad, pero solo de 
    aquellas en que el promedio es superior a $1.500.000 

    SELECT ciudad, AVG(sueldo) as sueldo_promedio 
    FROM personal 
    GROUP BY ciudad 
    HAVING AVG(sueldo) > 1500000;

-- Ejemplo 4 : Agrupar por múltiples columnas 
    
    SELECT departamento, ciudad, COUNT(*) as personas 
    FROM personal 
    GROUP BY departamento, ciudad 
    ORDER BY departamento, ciudad; 

-- Ejemplo 5 : Con WHERE y HAVING 
    
    SELECT categoria, COUNT(*) as productos, AVG(precio) as precio_promedio 
    FROM productos 
    WHERE stock > 0 
    GROUP BY categoria 
    HAVING COUNT(*) >= 5 
    ORDER BY precio_promedio DESC;

-- Ejemplo 6 : Encontrar máximos y mínimos 
    
    SELECT cliente, 
        MIN(fecha_pedido) as primera_compra, 
        MAX(fecha_pedido) as ultima_compra, 
        COUNT(*) as total_compras 
    FROM pedidos 
    GROUP BY cliente; 
