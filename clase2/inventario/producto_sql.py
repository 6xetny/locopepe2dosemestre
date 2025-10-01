import mysql.connector

conexion = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    # port="3307"
    #password="",
    database="iei_170"
)

cursor = conexion.cursor()

nombre = input("Ingrese nombre: ")
precio = float( input("Ingrese precio: "))
stock = int (input("Ingrese cantidad: "))

#primera consulta

cursor.execute("""INSERT INTO producto (nombre, precio,stock)
                VALUES (%s, %s, %s)""", (nombre,precio,stock))

# filas = cursor.fetchall()
# print("Tablas", filas)

# print("La tabllas son: ")
# for (tabla,) in cursor:
#     print(tabla)

print("Terminamos ")
cursor.close()
conexion.close()