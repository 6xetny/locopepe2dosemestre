import csv


ruta_csv = r"C:\Users\lbm03\Desktop\datos.csv" # r de raw
with open( ruta_csv, mode="r", encoding="utf-8") as archivo:
#archivo = open( ruta_csv, mode="r", encoding="utf-8")
    datos = csv.DictReader( archivo, delimiter=";" )
    for fila in datos:
        print(fila["nombre"])
#archivo.close()
