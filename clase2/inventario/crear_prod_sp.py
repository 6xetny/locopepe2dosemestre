import mysql.connector

def main():
    conexion = mysql.connector.connect(
                host="127.0.0.1",  # en Windows es mejor 127.0.0.1 que 'localhost'
                user="root",
                # password="tu_clave",
                database="crud",
            )
    cursor = conexion.cursor()

    try:
        nombre = input("Nombre: ")
        precio = float(input("Precio: "))
        stock = int(input("Stock: "))

        #El ultimo parametro es el que corresponde al parametro OUT
        parametros = (nombre, precio, stock, 0) #placeholder

        #llamado al procedimiento almacenado
        resultado = cursor.callproc('sp_producto_crear', parametros)

        #El resultado es una lista, de esas con corchetes []
        id_nuevo = resultado[-1]
        conexion.commit()  # confirma el grabado de datos

        print("Guardado!!")
        print("El nuevo id es :", id_nuevo)
    except mysql.connector.Error as error:
        print("Ocurrió error de BD:", error)
    finally:
        cursor.close()
        conexion.close()
##
main()