#clase Auto con 3 atributos
class Auto:
    color = ""
    def __init__(self, marca, modelo, anio):
        self.marca = marca
        self.modelo = modelo
        self.anio = anio
    
    #Getters
    def get_marca(self):
        return self.marca

    def get_modelo(self):
        return self.modelo
        
    def get_anio(self):
        return self.anio
        
    def get_color(self):
        return self.color

    def display_info(self):
        print(f"Marca: {self.get_marca()} Modelo: {self.get_modelo()} Año: {self.get_anio()} Color: {self.color}")
    
    #setters
    def set_marca(self, nueva_marca):
        self.marca = nueva_marca

    def set_modelo(self, nuevo_modelo):
        self.modelo = nuevo_modelo

    def set_anio(self, nuevo_anio):
        self.anio = nuevo_anio

    def set_color(self, nuevo_color):
        self.color = nuevo_color
#fin de la clase

#crear objeto
auto1 = Auto("Toyota", "Mirai", 2015)
auto1.set_color("rojo")
auto1.display_info()

auto1.set_modelo("Yaris")
auto1.display_info()


auto2 = Auto("Opel", "Corsa", 2024)
auto2.display_info()

