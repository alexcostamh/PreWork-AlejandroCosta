# 5. Ejercicio: Define una función que reciba una cadena de texto y retorne la cadena en reversa.
def cadena_en_reversa(cadena):
    cadena_reversa = cadena[::-1]
    return cadena_reversa


texto = "Hola que tal"
resultado_reversa = cadena_en_reversa(texto)
print("Cadena en reversa:", resultado_reversa)
