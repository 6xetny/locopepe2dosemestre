import tkinter as tk

def main():
    #1 ventana principal
    vent = tk.Tk()

    #2 configuración basica de la ventana 
    vent.title("YersonGames - Ventana principal")
    vent.geometry("600x400+150+200")
    vent.configure(bg="black") #COLOR DE FONDO

    #3 control de redimensionado 
    vent.resizable(True, True) #cambiar a False,False para bloquear

    #4 icono de la ventana 
    try:
        vent.iconbitmap("ventanas_python/icon.ico")
    except Exception as error:
        print("No se pudo cargar el ícono ", error)
        
    #5 Contenido de la ventana 
    label = tk.Label(
        vent,
        text="Hola Putos!!, donen pal nitro hijos del ñato",
        bg = "lightblue",
        font = ("Consolas", 14)
    )

    label.pack(pady=20)
    
    boton_cerrar = tk.Button (
        vent,
        text = "Cerrar la wea",
        font= ("Arial", 12),
        command = vent.destroy
    )

    boton_cerrar.pack(pady=30)

    # 6 iniciar el loop
    vent.mainloop()

#programa principal
main()