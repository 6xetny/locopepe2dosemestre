-- Funciones de conversion y expresiones condicionales

/* ¿Que son las funciones de conversion?

Las funciones de conversion en SQL son herramientas que permiten
transformar datos de un tipo a otro. Permiten cpnvertir numeros a texto,
texto a numero, fechas a cadenas y muchas otras combinaciones necesarias
para el manejo eficiente de datos.
*/

/* Elementos de las funciones de conversion:

Nombre de la funcion: Identifica la funcion (CAST)
Expresion o valor: El dato sera convertido.
Tipo de destino: El tipo de dato al que se quiere convertir.
Parametros opcionales: Como charset, longuitud, precision.
*/

/* ¿Como se usa?

Cast()
    CAST (expresion AS tipo_dato)


Tipos de datos mas comunes para conversion

CHAR/VARCHAR: cadena de texto
DATE/DTAETIME/TIME: Fechas y horas
DECIMAL: Numeros decimales 
SIGNED/UNSIGNED: Enteros con o sin signo




¿ Cuando se usan?

- Cuando los tipos de datos no coinciden en comparaciones
- Al realizar operaciones matematicas con datos almacenados como texto
- Al formatear salidas de consultas 
- Al importar/exportar datos entre diferentes sistemas

¿ Donde se usan?
- EN clausulas SELECT: Para formato de resultados 
- En clausulas WHERE: Para comparaciones correctas
- En JOIN: Para unir tablas con tipos diferentes 
- En ORDER BY: Para ordenamiento correcto
- En INSERT/UPDATE: Para asefurar tipos correctos

Ejemplos:

-- Conversion de texto a numero 
convertir string a entero(resultado: 123)
Nota: Entre "Cast" y el "(" no puede haber ningun espacio
SELECT CAST('123' AS SIGNED) AS NUMERO;

Convertir string a decimal(Resultado: 45.67)
SELECT CAST('45.67' AS DECIMAL(10,2)) AS precio;


-- Conversion de numero a texto

numero a string(Resultado: '12345')
SELECT CAST(12345 AS CHAR) AS codigo;

Con longitud especifica(Resultado: '789')
SELECT CAST(789 AS CHAR(10)) AS codigo_fijo;

-- Conversion de fechas

string a fecha:
SELECT CAST('2025-10-13' AS DATE) AS fecha;

Fecha a string:
SELECT CAST(NOW() AS CHAR) AS fecha_texto;

Extraer solo la fecha de un datetime (resultado : 2025-10-13)
SELECT CAST('2027-09-03 15:30:00' AS DATE) AS solo_fecha;