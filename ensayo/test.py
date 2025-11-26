import sqlite3
import hashlib
import requests
import json
from datetime import datetime

# Configuración inicial
DB_NAME = "ecotech_tarea.db"

def iniciar_base_datos():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS usuarios (
            usuario TEXT PRIMARY KEY,
            password TEXT NOT NULL
        )
    ''')
    
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS historial (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            indicador TEXT,
            valor REAL,
            fecha_indicador TEXT,
            usuario TEXT,
            fecha_consulta TEXT
        )
    ''')
    
    # Usuario por defecto para probar
    cursor.execute("SELECT * FROM usuarios WHERE usuario = 'admin'")
    if not cursor.fetchone():
        pass_hash = hashlib.sha256("admin123".encode()).hexdigest()
        cursor.execute("INSERT INTO usuarios VALUES (?, ?)", ('admin', pass_hash))
        conn.commit()
    
    conn.close()

class ProcesadorAPI:
    def __init__(self, datos_json, nombre_indicador):
        self.datos = datos_json
        self.nombre = nombre_indicador
        
    def obtener_datos(self):
        try:
            if 'serie' in self.datos:
                item = self.datos['serie'][0]
                return {
                    "nombre": self.nombre,
                    "valor": item['valor'],
                    "fecha": item['fecha'][:10]
                }
            return None
        except:
            return None

def guardar_registro(dato, usuario):
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    
    fecha_hora = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    cursor.execute('''
        INSERT INTO historial (indicador, valor, fecha_indicador, usuario, fecha_consulta)
        VALUES (?, ?, ?, ?, ?)
    ''', (dato['nombre'], dato['valor'], dato['fecha'], usuario, fecha_hora))
    
    conn.commit()
    conn.close()
    print(f"Guardado: {dato['nombre']} - ${dato['valor']}")

def consultar_api(url, nombre, usuario):
    try:
        resp = requests.get(url, timeout=5)
        
        if resp.status_code == 200:
            data = resp.json()
            procesador = ProcesadorAPI(data, nombre)
            resultado = procesador.obtener_datos()
            
            if resultado:
                guardar_registro(resultado, usuario)
            else:
                print(f"Error al leer datos de {nombre}")
        else:
            print(f"Error de conexión con {nombre}")
            
    except Exception as e:
        print(f"Fallo al consultar {nombre}: {e}")

def ver_historial():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM historial ORDER BY id DESC")
    datos = cursor.fetchall()
    conn.close()
    
    print("\n--- HISTORIAL ---")
    for d in datos:
        print(f"{d[1]} | ${d[2]} | {d[3]} | User: {d[4]} | Hora: {d[5]}")

def login():
    usuario = input("Usuario: ")
    clave = input("Contraseña: ")
    
    clave_hash = hashlib.sha256(clave.encode()).hexdigest()
    
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM usuarios WHERE usuario = ? AND password = ?", (usuario, clave_hash))
    user = cursor.fetchone()
    conn.close()
    
    if user:
        return usuario
    else:
        return None

def menu():
    iniciar_base_datos()
    
    print("--- LOGIN ---")
    usuario_actual = login()
    
    if not usuario_actual:
        print("Credenciales incorrectas. Adiós.")
        return

    while True:
        print("\n1. Consultar UF y Euro")
        print("2. Ver Historial")
        print("3. Salir")
        
        opcion = input("Opción: ")
        
        if opcion == "1":
            print("\nConsultando...")
            consultar_api("https://mindicador.cl/api/uf", "UF", usuario_actual)
            consultar_api("https://mindicador.cl/api/euro", "Euro", usuario_actual)
            
        elif opcion == "2":
            ver_historial()
            
        elif opcion == "3":
            print("Saliendo...")
            break
        else:
            print("Opción no válida")

if __name__ == "__main__":
    menu()
