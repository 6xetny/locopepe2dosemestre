class Bebida:
    def servir(self):
        return "Sirviendo una bebida generica"

class Cafe(Bebida):
    def servir(self):
        return "Sirviendo un Cafe"

class Te(Bebida):
    def servir(self):
        return "Sirviendo un Te"

#Funcion polimorfica
def servir_bebida( bebida):
    #llama al metodo servir() del objeto que le pasen
    return bebida.servir()

#Programa principal
b = Bebida()
t = Te()
c = Cafe()
print(servir_bebida(c))

