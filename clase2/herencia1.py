class Vehiculo:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    def mostrar_info(self):
        print(f"{self.marca} {self.modelo}")

#programa principal 
vehiculo = Vehiculo("Suzuki", "Vitara")
vehiculo.mostrar_info()
        