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

def crear_usuario():
    print("\n--- REGISTRO DE USUARIO ---")
    nuevo_usuario = input("Ingresa nuevo usuario: ")
    nueva_clave = input("Ingresa nueva contraseña: ")
    
    clave_hash = hashlib.sha256(nueva_clave.encode()).hexdigest()
    
    try:
        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute("INSERT INTO usuarios VALUES (?, ?)", (nuevo_usuario, clave_hash))
        conn.commit()
        conn.close()
        print("¡Usuario creado con éxito!")
    except:
        print("Error: El usuario ya existe.")

def login():
    print("\n--- INICIAR SESIÓN ---")
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

def menu_principal():
    iniciar_base_datos()
    
    usuario_actual = None
    
    while usuario_actual is None:
        print("\n1. Iniciar Sesión")
        print("2. Registrar Nuevo Usuario")
        print("3. Salir")
        opcion_inicio = input("Elige: ")
        
        if opcion_inicio == "1":
            usuario_actual = login()
            if not usuario_actual:
                print("Credenciales incorrectas.")
        elif opcion_inicio == "2":
            crear_usuario()
        elif opcion_inicio == "3":
            print("Adiós.")
            return
        else:
            print("Opción no válida.")

    # Una vez logueado, entramos al menú del sistema
    while True:
        print(f"\n--- MENÚ ECOTECH (Usuario: {usuario_actual}) ---")
        print("1. Consultar UF y Euro")
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
            print("Cerrando sesión...")
            break
        else:
            print("Opción no válida")

if __name__ == "__main__":
    menu_principal()
