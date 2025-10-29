import hashlib
import pwinput


palabra = pwinput.pwinput("Clave: ")
print(palabra)
palabra_b = palabra.encode()
print(palabra_b)
pal_md5 = hashlib.md5(palabra_b)
print(pal_md5.hexdigest())