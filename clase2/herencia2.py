class Persona:
    def __init__(self, rut, nombre):
        self.rut = rut
        self.nombre = nombre

    def presentarse(self):
        return f"Soy {self.nombre} Rut: {self.rut}"

class Estudiante(Persona):
    def __init__(self, rut, nombre, carrera):   
        super().__init__(rut,nombre)
        self.carrera = carrera  

    def presentarse(self):  #esto es sobrecarga
        base = super().presentarse()
        return f"{base} Estudio la carrera {self.carrera}"
    
class Docente(Persona):
    def __init__(self, rut, nombre, asignatura):
        super().__init__(rut,nombre)
        self.asignatura = asignatura

    def presentarse(self):
        base = super().presentarse()
        return f"{base} dicto {self.asignatura}"

#PP 
per = Persona("4490234-K", "Claudia Salinas") 
est = Estudiante("21.345.123-6", "Zacarias Flores de la plaza", "Ing. en Informatica")
doc = Docente("10.345.987-0", "Elba Lazo", "POOS") 

print(per.presentarse())
print(est.presentarse())
print(doc.presentarse())    
