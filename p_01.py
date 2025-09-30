# 1- El siguiente fragmento de código Python recibe una lista de números y devuelve la suma de total de todos sus elementos. 
# Contesta lo siguiente: 
# a) Encuentra y corrige el error para que la función devuelva la suma correcta de los elementos de una lista. 

def sumar_lista(numeros): 
    total = 0 
    for i in range(len(numeros)):
        total += numeros[i] 
    return total # Corregido: Se añadió el return total para que la función devuelva el valor calculado.

numeros = [1, 2, 3, 4, 5]

print(f"La suma de {numeros} es:",sumar_lista(numeros))

def sumar_lista_v2(numeros):
    return sum(numeros) # Versión simplificada usando la función sum() de Python.

print(f"La suma de {numeros} es (versión alternativa):",sumar_lista_v2(numeros))


# b) Explica brevemente cómo usarías Git y GitHub para subir el cambio al repositorio “funciones_etl”. Describe un flujo de trabajo típico que incluya el uso de ramas (branching), confirmaciones de cambios (commits), y solicitudes de extracción (pull requests) para colaborar con otros desarrolladores de datos.





