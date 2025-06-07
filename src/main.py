
from pwn import log
import sys
import time
import signal
import os
from contador import contar_vocales

def ctrl_c(sig, frame):
    print(f'\n[!] Interrupcion, saliendo...')
    sys.exit(1)

def main():
    # hacemos un clear
    os.system('clear')

    # Inicializamos la barra de progreso
    p1= log.progress("")

    # Mostramos un mensaje de espera
    p1.status("Esperando entrada...")

    cadena = input("Ingrese una cadena de texto: ")
    os.system('clear')

    p1.status("Cadena ingresada: " + cadena)
    time.sleep(1)
    # p1.status("Contando vocales...")
    # time.sleep(1)
    
    contador = contar_vocales(cadena)
    p1.success(f"Cantidad de vocales: {contador}")

signal.signal(signal.SIGINT, ctrl_c)

if __name__ == "__main__":
    main()
