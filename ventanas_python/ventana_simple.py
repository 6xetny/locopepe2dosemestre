import tkinter as tk

root = tk.Tk()
root.title("Mi primera ventana papu :v tkinter")

#ancho x alto + PosX + PosY
root.geometry("600x400+120+20")
root.resizable(False, False)

root.configure(bg="black")
try:
    root.iconbitmap("ventanas_python/icon.ico")
except Exception as error:
    print("No se pudo cargar el ícono ", error)
root.mainloop()