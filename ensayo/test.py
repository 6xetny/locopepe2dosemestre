import secrets

password = input("Clave: ")
print(password)
#1 generamos sal aleatoria (bytes)
sal = secrets.token_bytes(16)
print( sal.hex() )
