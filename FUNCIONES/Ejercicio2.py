# 2. Ejercicio: Define una función que tome un número (10) y retorne su factorial.

def factorial(numero):
    if numero == 0 or numero == 1:
        return 1
    else:
        return numero * factorial(numero - 1)


numero = 10
resultado_factorial = factorial(numero)
print(f"El factorial de {numero} es: {resultado_factorial}")
