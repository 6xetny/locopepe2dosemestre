import sqlite3
import secrets
import hashlib
from pwinput import pwinput
from datetime import date
import requests


RUTA_BD = "poos.fb"
ITERACIONES = 120_000

def obtener_db():
    return sqlite3.connect(RUTA_BD)


def verificar_usuario(username :str, password: str) -> bool:
    """
    verifica si el usuario y contraseña ingresadis son correctos 
    compara el hash actual con el almacenado en la BD
    """
    con = obtener_db()
    cur = con.cursor()

    cur.execute(
        "SELECT sal_hex, hash_hex, iteraciones FROM usuario WHERE username = ?",
        (username,)
    )
    fila = cur.fetchone()
    con.close()
    if fila: #si la fila tiene info
        sal = bytes.fromhex(fila[1])
        hash_guardado = bytes.fromhex(fila[1])
        iteraciones = int(fila[2])
        hash_actual = hashlib.pbkdf2_hmac("sha256", password.encode("utf-8"), sal, iteraciones)
        return hash_actual == hash_guardado
    else:
        return False

def fecha_hoy( d = None ):
    """
    Devuelve una fecha en formato DD-MM-YYYY
    si no se entrega "d" entonces usa la fecha de hoy
    """
    if d is None:
        d = date.today()
        dia = str(d.day)
        mes = str(d.month)
        anio = str(d.year)

        return dia + "-" + mes + "-" + anio   

def obtener_dolar_hoy() -> float: 
    """
    consultar  el valor del dolar del dia actual desde la api de findic.cl
    Devuelve el valor numerico como dato tipo float 
    """ 

    url = f"https://findic.cl/api/dolar/{fecha_hoy()}"
    try: 
        r = requests.get(url, timeout=10)
        r.raise_for_status()
        datos = r.json()
        #estructura esperada
        # "serie": 
        serie = datos.get("serie", [])
        if not serie: 
            raise ValueError("Respueta sin datos en la serie")
        valor = float(serie[0]["valor"])
        return valor 
    except (requests.RequestException, ValueError, KeyError) as error:
        raise RuntimeError(f"error al consultar la API: {error}")
        