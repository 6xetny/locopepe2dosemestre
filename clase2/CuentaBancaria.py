# Crea una clase CuentaBancaria que permita:
# •	Abrir una cuenta con un número de cuenta y un saldo inicial.
# •	Depositar dinero en la cuenta.
# •	Retirar dinero de la cuenta (solo si hay saldo suficiente).
# •	Mostrar el saldo actual.
# Requerimientos:
# 1.	Implementa la clase con su constructor y métodos (depositar, retirar, mostrar_saldo).
# 2.	En el programa principal, crea una cuenta con saldo inicial de $1000.
# 3.	Deposita $500, intenta retirar $2000, y luego retira $300.
# 4.	Muestra el saldo después de cada operación

class CuentaBancaria:
    def __init__(self, numero, saldo_inicial):
        self.numero = numero
        self._saldo = saldo_inicial
 
    def mostrar_saldo(self):
        print(f"Saldo de la cuenta {self.numero} es: ${self._saldo}")

    #Getter 
    def get_saldo(self):
        return self._saldo
    
    #Setter
    def set_saldo(self, nuevo_saldo):
        self._saldo = nuevo_saldo

#PP
cuenta = CuentaBancaria("6969-69", 1000)
cuenta.mostrar_saldo()
cuenta.saldo = 5000
cuenta.mostrar_saldo()
cuenta._saldo = -4800
cuenta.mostrar_saldo()