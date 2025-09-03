import math

class Figura:
    def area(self):
        raise NotImplementedError("Este metodo debe ser implmentado por la subclase")
    
    def perimetro(self):
        raise NotImplementedError("Este metodo debe ser implmentado por la subclase")

class Rectangulo(Figura):
    def __init__(self, ancho, alto):
        if ancho <= 0 or alto <= 0:
            raise ValueError("Dimensiones deben ser positivas")
        self.ancho = ancho
        self.alto = alto
    
    def area(self):
        return self.ancho * self.alto

    def perimetro(self):
        return (self.ancho + self.alto) * 2

class Circulo(Figura):
    def __init__(self, radio):
        if radio <= 0:
            raise ValueError("El radio debe ser positivo")
        self.radio = radio
    
    def area(self):
        return math.pi * (self.radio ** 2)

    def perimetro(self):
        return 2 * math.pi * self.radio

#PP
rec = Rectangulo(3,4)
print(f"El area es: {rec.area()}")
print(f"El perimetro es: {rec.perimetro()}")
cir = Circulo(10)
print(f"El area es: {cir.area()}")
print(f"El perimetro es: {cir.perimetro()}")