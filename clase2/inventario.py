import csv 
from producto import Producto

class Inventario:
    def __init__(self):
        self.lisprood = [] #lista de productos

    #CRUD

    def buscar(self, id:str):
        for prod in self.lisprood:
            if prod.get_id() == id:
                return prod 
        return None 

    def crear(self, id, nombre, precio, stock):
        if self.buscar(id) is not None:
            raise ValueError("Ya existe un producto con ese id")
        p = Producto(id, nombre, precio, stock)
        self.lisprood.append( p )
    
    def listar(self):
        return list(self.lisprood)

    def actualizar(self, nid, nnombre=None, nprecio=None, nstock=None): 
        prod = self.buscar(id)
        if prod is None #Quiere decir no se encontro el producto id
            raise LookupError("Producto no encontrado")
        if nnombre is not None:
            prod.set_nombre(nnombre)
        if nprecio is not None:
            prod.set_precio(nprecio)
        if nstock is not None:
            prod.set_stock(nstock)
        return prod 

    def eliminar(self, id):
        prod = self.buscar(id)
        if prod is None:
            raise LookupError("Producto no encontrado")
        self.lisprood.remove(prod)
    
    #persistencia CSV simple 
    def cargar_desde_csv():
        pass 

    def guardar_a_csv():
        pass