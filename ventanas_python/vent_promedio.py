import tkinter as tk

def main():
    #bloque 1: ventana pppal
    # cre la ventana raiz de tkinter 
    #define caracteristicas de la ventana 
    vent = tk.Tk()
    vent.title("Calculadora de promedio")
    vent.geometry("400x320+800+150")
    vent.resizable(False,False)

    #bloque 2: contenedor de ppal (Frame)
    #El frame "marco" es el contenedor donde usaremos grilla "grid"
    #padx/pady agregar espacio interno entre y alrededor del contenido 
    #pack hace que el marco ocupe toda la ventana 
    marco = tk.Frame(vent, padx=10, pady=10)
    marco.pack(fill="both", expand=True)

    #bloque 3: entrada de datos (4 notas)
    # cada par label/entry va en una fila distinta del grid 
    #Filas 0 a la 3 se usan para las notas 1 a 4

    #Fila 0: Nota 1
    lbl_nota1 = tk.Label(marco, text="Nota 1 :")
    lbl_nota1.grid(row=0, column=0, padx=5,pady=5 )

    entry_nota1 = tk.Entry(marco, width=10)
    entry_nota1.grid(row=0, column=1, padx=5, pady=5 )

    #Fila 1: Nota 2
    lbl_nota2 = tk.Label(marco, text="Nota 2 :")
    lbl_nota2.grid(row=1, column=0, padx=5,pady=5 )

    entry_nota2 = tk.Entry(marco, width=10)
    entry_nota2.grid(row=1, column=1, padx=5, pady=5 )

    #Fila 2: Nota 3
    lbl_nota3 = tk.Label(marco, text="Nota 3 :")
    lbl_nota3.grid(row=2, column=0, padx=5,pady=5 )

    entry_nota3 = tk.Entry(marco, width=10)
    entry_nota3.grid(row=2, column=1, padx=5, pady=5 )

    #Fila 3: Nota 4
    lbl_nota4 = tk.Label(marco, text="Nota 4 :")
    lbl_nota4.grid(row=3, column=0, padx=5,pady=5 )

    entry_nota4 = tk.Entry(marco, width=10)
    entry_nota4.grid(row=3, column=1, padx=5, pady=5 )

    #Bloque 4: logica de la aplicaciones 
    # calcular promedio: lee las 4 notas, calcula y muestra el promedio
    # limpiar: borra las entradas y resetea los mensajes (labels)
    # salir: cierra la ventana

    def calcular_promedio():
        try:
            n1 = float(entry_nota1.get())
            n2 = float(entry_nota2.get())
            n3 = float(entry_nota3.get())
            n4 = float(entry_nota4.get())

            prom = (n1 + n2 + n3 + n4) /4
            lbl_resultado.config(text=f"Promedio: {prom}")
            lbl_mensaje.config(text="")
        
        except ValueError: 
            lbl_resultado.config(text=f"Promedio: --")
            lbl_mensaje.config(text="Error: ingrese sólo números en las 4 notas")

    def limpiar():
        #Borrar el contenido de todas las entradas 
        for entrada in (entry_nota1, entry_nota2, entry_nota3, entry_nota4):
            entrada.delete(0, tk.END)
            #restaurar mensakes, o label
            lbl_resultado.config(text=f"Promedio: --")
            lbl_mensaje.config(text="")
            #vuelve a enfocar la nota1
            entry_nota1.focus()

    def salir():
        vent.destroy()

    #bloque 5: botones y labeles de slida (resultado y mensajes)
    # - fila 4: tres botones (calcular, limpiar y salir)
    # - fila 5 etiqueta o label de promedio
    # - fila 6 mensaje para mostrar error

    #botones en la fila 4
    btn_calcular = tk.Button(marco, text= "Calcular", command=calcular_promedio)
    btn_calcular.grid(row=4, column=0, sticky="ew", padx=5, pady=5)

    btn_calcular = tk.Button(marco, text= "Limpiar", command=limpiar)   
    btn_calcular.grid(row=4, column=1, sticky="ew", padx=5, pady=5)

    btn_calcular = tk.Button(marco, text= "Salir", command=salir)
    btn_calcular.grid(row=4, column=2, sticky="ew", padx=5, pady=5)

    #Fila 5: resultado
    lbl_resultado = tk.Label(marco, text="Promedio: --", font=("Arial", 12, "bold"))
    lbl_resultado.grid(row=5,column=0, columnspan=3, pady = 5)
    
    #fila 6: mensaje de error 
    lbl_mensaje = tk.Label(marco, text="", fg="red")
    lbl_mensaje.grid(row=6, column=0, columnspan=3, pady=5 )

    # bloque 6: ajustes de la grilla y lop primcipal
    marco.grid_columnconfigure(0, weight=1)
    marco.grid_columnconfigure(1, weight=1)
    marco.grid_columnconfigure(2, weight=1)

    vent.mainloop()

# ppal 
main()