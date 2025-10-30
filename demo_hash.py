import hashlib
import secrets
import base64

from pwinput import pwinput

password = pwinput("Clave: ")
print(password)

#1 generamos sal aleatoria (bytes)
sal = secrets.token_bytes(16)
sal_64 = base64.b64encode(sal).decode()
print(sal_64)


#2 derivamos el hash(bytes) usando el algoritmo pbkdf2_hmac
iteraciones = 100_000
hash_b = hashlib.pbkdf2_hmac("sha256", password.encode("utf-8"), sal, iteraciones )
hash_64 = base64.b64encode(hash_b).decode()
print(hash_64)
print("===== Lo que deberiamos guardar como string en DB ======")
print("Sal_64 :", sal_64)
print("Hash_64 : ", hash_64)
print("=========================================================")


# 3) Verificamos contraseña 
password_nueva = pwinput("Bienvenido, Ingrese clave: ")
re_hash_b = hashlib.pbkdf2_hmac("sha256", password_nueva.encode("utf-8"), sal, iteraciones  )
print(re_hash_b)


#comparamos los hashes
resultado = secrets.compare_digest(hash_b,re_hash_b )
print("Son iguales los hashes?:", resultado)