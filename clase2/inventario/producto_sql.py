import mysql.connector

conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    # port="3307"
    #password="",
    database="iei_170"
)

cursor = conexion.cursor()

#primera consulta
cursor.execute("SHOW TABLES")
filas = cursor.fetchall()
print("Tablas", filas)

# print("La tabllas son: ")
# for (tabla,) in cursor:
#     print(tabla)

cursor.close()
conexion.close()