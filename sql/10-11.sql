/* ¿Que son las Expresiones condicionales en SQL?

Las expresiones condicionales en SQL son sentencias que permiten evaluar condiciones y retornar diferentes valores según El resultado de estas evaluaciones. Funcionan como
una estructura del tipo "Si-Entonces-Sino" dentro de una consulta SQL.

-- SQL ofrece varias expresiones condicionales 
1. IF ()
2. CASE
3. IFNULL ()
4. NULLIF ()
5. COALESCE ()

-- Estructura IF()
Sintaxis ...
IF(condición, valor_si_es_verdadero, valor_si_es_falso)

-- CASE
tiene dos formas...
simple: Compara una expresion con valores especificos
Buscada: Evalua multiples condiciones booleanas

Sintaxis: 
    CASE 
        When condicion1 THEN resultado1
        WHEN condicion2 THEN resultado2
        ...
        ELSE resultado_default 
    END

IFNULL ():
Sintaxis:
    IFNULL (expresion, valor_si_Es_null)

NULLIF:
Sintaxis:
    NULLIF(expresion1, expresion2)

COALESCE():
Sintaxis:
-- Significa "Unirse" o "Fusionar" }
    COALESCE(valor1,valor2,...,valorN)   

¿Como se usan las expreciones condicionales en sql?

-- Funcion IF():
Evalua una condicion y retorna uno de dos valores ...

EJEMPLO:
SELECT nombreproducto, precio, IF(precio>3000,'Caro','Economico') AS categoria FROM productos;

-- Expresion CASE (Forma simple):
SELECT 
    nombre, 
    CASE talla 
        WHEN 'S' THEN 'Pequeña'
        WHEN 'M' THEN 'Mediana'
        WHEN 'L' THEN 'Grande'
        ELSE 'Desconocida' 
    END AS descripcion_talla
FROM ropa;

-- Expresion CASE (Forma buscada):
SELECT 
    apellido,
    salario, 
    CASE
        WHEN Salario < 500000 THEN 'Bajo'
        WHEN salario BETWEEN 500000 AND 1000000 THEN 'Medio'
        WHEN salario > 1000000 THEN 'Alto'
        ELSE 'No especificado' 
    END AS rango_salarial
FROM personal;

-- IFNULL()
Retorna el primer valor si no es NULL, de lo contrario retorna el segundo.

SELECT 
    apellido, 
    IFNULL(departamento,'Sin departamento') AS contacto 
FROM personal;

-- NULLIF()
Retirna NULL si ambas expresiones son iguales, de lo contrario retorna la primera.

SELECT 
    nombreproducto,
    NULLIF(stock,0) AS cantidad_valida
FROM producto;

-- COALESCE()
Retorna el primer valor no NULL de la lista:

SELECT 
    nombre,
    COALESCE(email,celular,'Sin contacto') AS contacto_disponible
FROM usuario;