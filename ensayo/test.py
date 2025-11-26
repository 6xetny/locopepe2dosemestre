# ================================================================
# CASO ECOTECH: AUTENTICACIÓN, APIs ECONÓMICAS Y CLASES
# ================================================================
# Adaptado al estilo "Cuaderno de Práctica Sismos"
# Cumple con: Hash, SQLite, Requests, Clase Deserializadora
# ================================================================

# ================================================================
# SECCIÓN 1: IMPORTACIÓN DE LIBRERÍAS + CREACIÓN DE BASE LOCAL
# ================================================================
import sqlite3
import hashlib
import requests
import json
from datetime import datetime

print("\n=== SECCIÓN 1: INICIALIZANDO BASE DE DATOS ===")

conn = sqlite3.connect("ecotech.db") 
cursor = conn.cursor()

# Tabla de usuarios (Requisito 2.3)
cursor.execute("""
CREATE TABLE IF NOT EXISTS usuarios(
    usuario TEXT PRIMARY KEY,
    hash TEXT NOT NULL
)
""")

# Tabla de historial (Requisito 2.3)
cursor.execute("""
CREATE TABLE IF NOT EXISTS historial(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    indicador TEXT,
    valor REAL,
    fecha_indicador TEXT,
    usuario TEXT,
    fecha_consulta TEXT
)
""")

conn.commit()
conn.close()

print("Base de datos creada/lista.\n")


# ================================================================
# SECCIÓN 2: FUNCIONES DE AUTENTICACIÓN CON HASH (SHA-256)
# ================================================================
# Mantenemos la lógica de seguridad solicitada (SHA-256).
# ================================================================

print("=== SECCIÓN 2: AUTENTICACIÓN ===")

def crear_usuario_admin():
    """ Crea un usuario 'admin' con pass 'admin123' si no existe """
    conn = sqlite3.connect('ecotech.db')
    cursor = conn.cursor()
    
    # admin123 en SHA-256
    pass_hash = hashlib.sha256("admin123".encode()).hexdigest()

    try:
        cursor.execute("INSERT INTO usuarios(usuario, hash) VALUES (?, ?)", ('admin', pass_hash))
        conn.commit()
        print("Usuario 'admin' creado por defecto (pass: admin123).")
    except sqlite3.IntegrityError:
        pass # Ya existe, no hacemos nada
    finally:
        conn.close()

def login(usuario, password):
    """ Valida usuario contra la BD usando Hash """
    conn = sqlite3.connect('ecotech.db')
    cursor = conn.cursor()

    cursor.execute("SELECT hash FROM usuarios WHERE usuario=?", (usuario,))
    fila = cursor.fetchone()
    conn.close()

    if fila is None:
        print("Usuario no existe.")
        return False

    hash_input = hashlib.sha256(password.encode()).hexdigest()

    if hash_input == fila[0]:
        print(">> Autenticación exitosa.")
        return True
    else:
        print(">> Contraseña incorrecta.")
        return False

print("Funciones de autenticación listas.\n")


# ================================================================
# SECCIÓN 3: CONSUMO DE API Y CLASE DESERIALIZADORA
# ================================================================
# Requisito 2.2: Debe existir una CLASE para procesar el JSON.
# Usamos mindicador.cl como fuente real.
# ================================================================

print("=== SECCIÓN 3: API Y CLASES ===")

class DeserializadorEco:
    """ Clase requerida para procesar el JSON y normalizar datos """
    def __init__(self, json_data, tipo):
        self.data = json_data
        self.tipo = tipo

    def obtener_dato_limpio(self):
        try:
            # La API devuelve 'serie': [{'fecha': '...', 'valor': ...}]
            if 'serie' in self.data and len(self.data['serie']) > 0:
                item = self.data['serie'][0] # El dato más reciente (hoy)
                
                # Normalizamos
                return {
                    "indicador": self.tipo,
                    "valor": item['valor'],
                    "fecha": item['fecha'][:10] # Cortamos la hora, dejamos YYYY-MM-DD
                }
            return None
        except Exception:
            return None

def consultar_indicador(url, nombre_tipo):
    """ Función que pide datos a la API y usa la Clase para procesar """
    try:
        r = requests.get(url, timeout=5)
        r.raise_for_status()
        
        # Deserialización usando la Clase
        obj_procesador = DeserializadorEco(r.json(), nombre_tipo)
        datos = obj_procesador.obtener_dato_limpio()
        
        if datos:
            print(f"   -> {datos['indicador']}: ${datos['valor']} (Fecha: {datos['fecha']})")
            return datos
        else:
            print(f"   -> Error leyendo datos de {nombre_tipo}")
            return None

    except requests.exceptions.ConnectionError:
        print(f"   [X] Error de conexión con {nombre_tipo}")
    except Exception as e:
        print(f"   [X] Error desconocido: {e}")
    return None

print("Clase y función de API listas.\n")


# ================================================================
# SECCIÓN 4: REGISTRO LOCAL EN SQLITE3
# ================================================================
# Guarda el indicador, valor y quién hizo la consulta.
# ================================================================

print("=== SECCIÓN 4: REGISTRO LOCAL ===")

def registrar_indicador(datos, usuario_actual):
    if datos is None:
        return

    conn = sqlite3.connect('ecotech.db')
    cursor = conn.cursor()

    ahora = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    cursor.execute("""
        INSERT INTO historial(indicador, valor, fecha_indicador, usuario, fecha_consulta)
        VALUES (?, ?, ?, ?, ?)
    """, (datos["indicador"], datos["valor"], datos["fecha"], usuario_actual, ahora))

    conn.commit()
    conn.close()
    print(f"   [BD] Registro guardado para {datos['indicador']}.")

print("Funciones de registro listas.\n")


# ================================================================
# SECCIÓN 5: VER HISTORIAL
# ================================================================
# Muestra tabla con formato ordenado
# ================================================================

print("=== SECCIÓN 5: HISTORIAL ===")

def ver_historial():
    conn = sqlite3.connect('ecotech.db')
    cursor = conn.cursor()

    cursor.execute("SELECT indicador, valor, fecha_indicador, usuario, fecha_consulta FROM historial ORDER BY id DESC")
    filas = cursor.fetchall()
    conn.close()

    print("\n=== HISTORIAL DE CONSULTAS ===")
    print(f"{'IND':<6} | {'VALOR':<10} | {'FECHA IND':<12} | {'USUARIO':<10} | {'FECHA CONS'}")
    print("-" * 65)
    
    if not filas:
        print("No hay registros.")
    
    for f in filas:
        # f[0]=ind, f[1]=val, f[2]=f_ind, f[3]=user, f[4]=f_cons
        print(f"{f[0]:<6} | ${f[1]:<9} | {f[2]:<12} | {f[3]:<10} | {f[4]}")
    print()


# ================================================================
# SECCIÓN 6: MENÚ PRINCIPAL
# ================================================================
# Flujo: Login -> Menú -> Consultar (UF+Euro a la vez) -> Salir
# ================================================================

print("=== SECCIÓN 6: MENÚ ===")

def menu():
    crear_usuario_admin() # Aseguramos que exista admin
    
    print("\n::: LOGIN ECOTECH :::")
    usu = input("Usuario: ")
    pwd = input("Contraseña: ")

    if not login(usu, pwd):
        return # Si falla, termina el programa

    salir = False
    while not salir:
        print("\n=== MENÚ PRINCIPAL ===")
        print("1. Consultar indicadores del día (UF y Euro)")
        print("2. Ver historial de consultas")
        print("3. Salir")

        op = input("Opción: ")

        if op == "1":
            print("\n--- Consultando APIs ---")
            # Consultamos UF
            dato_uf = consultar_indicador("https://mindicador.cl/api/uf", "UF")
            registrar_indicador(dato_uf, usu)
            
            # Consultamos Euro
            dato_euro = consultar_indicador("https://mindicador.cl/api/euro", "Euro")
            registrar_indicador(dato_euro, usu)
            print("------------------------")
            
        elif op == "2":
            ver_historial()
        elif op == "3":
            print("Cerrando sesión...")
            salir = True
        else:
            print("Opción no válida.")

# ================================================================
# SECCIÓN FINAL: EJECUCIÓN
# ================================================================

# Descomenta la siguiente línea para ejecutar el programa:
if __name__ == "__main__":
    menu()
