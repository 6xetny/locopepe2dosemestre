import mysql.connector
conexion = mysql.connector.connect(
    host="127.0.0.1", #en windows es mejor que localhost
    user="root",
    # port="3307"
    #password="",
    database="iei_170"
)

cursor = conexion.cursor()
"""
cuando haces mysql.connector.connect(...) obtienes un objeto de
conexion  MySQL
Desde esa conexion creas un cursor, que es el lapiz con el que:
- enviío instrucciones SQL a la base de datos
- Lee los resultados (resultset9 fila por fila (iterando el contenido del cursor)
- Mantiene el untro a la posicion de lectura.
- si hay escrituras confirmar (commitÑ) o deshacer (rollback) cambios 
  por medio de conexion
"""

nombre = input("Ingrese nombre: ") 
precio = float( input ("Ingrese precio: "))
stock = int (input("Ingrese cantidad: "))

#primera consulta

cursor.execute("""INSERT INTO producto (nombre, precio,stock) 
                  VALUES (%s, %s, %s)""", (nombre, precio, stock))
# conexion.commit()
# filas = cursor.fetchall()
# print("Tablas", filas)

print("terminamos ")
cursor.close()
conexion.close()