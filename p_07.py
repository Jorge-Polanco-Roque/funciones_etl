# 7-Supón que tienes monedas con valores [1, 5, 7, 13] (asume que las monedas siempre están en orden ascendente dentro de la lista de Python), escribe un algoritmo en Python para que encuentre el cambio necesario para pagar cierto artículo. Por ejemplo, si un artículo cuesta 18, entonces sería necesario usar una moneda de 5 y otra de 13. Trata de que sea con el menor número de monedas posibles. Por ejemplo, 43 se puede lograr de manera mínima con 5 monedas: 2 monedas de 13, 1 de 7 y 2 de 5. El resultado debe ser una lista de Python con el número de monedas de cada tipo, para el ejemplo anterior la solución sería: [0,2,1,2], indicando 0 monedas de 1, 2 monedas de 5, 1 moneda de 13 y 2 de 5. 

# Definimos la función que calcula el cambio mínimo
def cambio_minimo(monedas, monto):
    # Creamos una lista llena de ceros para guardar cuántas monedas de cada tipo usaremos
    resultado = [0] * len(monedas)
    
    # Recorremos la lista de monedas desde la más grande hasta la más pequeña (índices en orden inverso)
    for i in range(len(monedas)-1, -1, -1):
        # Si la moneda actual cabe dentro del monto restante
        if monto >= monedas[i]:
            # Calculamos cuántas monedas de ese valor podemos usar
            resultado[i] = monto // monedas[i]
            # Actualizamos el monto restante con el residuo
            monto = monto % monedas[i]
    # Retornamos la lista con el número de monedas de cada tipo
    return resultado

# Definimos las monedas disponibles
monedas = [1, 5, 7, 13]


print(cambio_minimo(monedas, 18))
print(cambio_minimo(monedas, 43))
