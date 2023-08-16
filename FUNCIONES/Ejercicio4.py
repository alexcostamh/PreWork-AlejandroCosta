# 4. Ejercicio: Define una función que reciba una lista de números (1,3,6,8) y retorne la suma de ellos.

def suma_lista(numeros):
    suma = 0
    for numero in numeros:
        suma += numero
    return suma


lista_numeros = [1, 3, 6, 8]
resultado_suma = suma_lista(lista_numeros)
print(f"La suma de los números en la lista es: {resultado_suma}")
