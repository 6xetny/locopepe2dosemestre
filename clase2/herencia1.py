class Vehiculo:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo
        

    def mostrar_info(self):
        print(f"{self.marca} {self.modelo} ")

#Clase hija
class Auto(Vehiculo):
    def __init__(self, marca, modelo, anio):
        super().__init__(marca, modelo) #llamar al constructor del padre
        self.anio = anio

    def mostrar_info(self): #sobrecarga
        print(f"{self.marca} {self.modelo} {self.anio}")

#programa principal 
vehiculo = Vehiculo("Suzuki", "Vitara")
vehiculo.mostrar_info()

auto = Auto("BMW","M3", 2010)
auto.mostrar_info()
        