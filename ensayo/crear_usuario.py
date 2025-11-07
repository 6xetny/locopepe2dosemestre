import sqlite3
import secrets
import hashlib
from pwinput import pwinput

RUTA_BD = "poos.db"
ITERACIONES = 120_000

def obtener_db():
    return sqlite3.connect(RUTA_BD)

def crear_esquema():
    """
    Crear las tablas necesarias en la db si aun no existen
    Se ejecuta una sola vez al iniciar el sistema
    """

    con = obtener_db()
    cur = con.cursor()
    # usuario: guardamos username, la sal, el hash de la password y las interacciones
    cur.execute(
        """
        CREATE TABLE IF NOT EXISTS usuario (
            username TEXT PRIMARY KEY,
            sal_hex TEXT NOT NULL,
            hash_hex TEXT NOT NULL,
            iteraciones INTEGER NOT NULL
            )
        """)
    # historial de consultas
    cur.execute(
        """
        CREATE TABLE IF NOT EXISTS consulta (
            id INTERGER TEXT PRIMARY KEY,
            valor_dolar REAL NOT NULL,
            fecha_hora TEXT NOT NULL
            )
        """) 
    con.commit()
    con.close()

def crear_usuario(username :str, password: str):
    """
    Crea un usuario: genera la sal, calcula el hash PBKD2 de la password
    guarda username, la sal, iteraciones en la tabla de usuario
    """

    sal = secrets.token_bytes(16)
    hash_bytes = hashlib.pbkdf2_hmac("sha256", password.encode("utf-8"), sal,ITERACIONES )
    try:
        con = obtener_db()
        cur = con.cursor()
        cur.execute(
        "INSERT INTO usuario(username, sal_hex, hash_hex, iteraciones) VALUES (?,?,?,?)",
        (username, sal.hex(), hash_bytes.hex(), ITERACIONES)
        )
        con.commit()
    finally:
        con.close()

def main():
    crear_esquema()
    print("=== CREAR USUARIO ===")
    usuario = input("Usuario: ")
    clave = pwinput("Contraseña: ")
    crear_usuario(usuario, clave)   
    print("Usuario creado correctamente!")

#pp 
main()


