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

#2 derivamos el hash(bytes) usamdp el algoritmo pkdbf2_hmac
iteraciones = 100_000
hash_b = hashlib.pkdbf2_hmac("sha256", password.encode("utf-8"), sal, iteraciones )
hash_64 = base64.b64encode(hash_b).decode()
print(hash_64)