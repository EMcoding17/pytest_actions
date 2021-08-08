def Orden(lista):
    print("Orden acvendente de numero enteros")
    lista.sort()
    return lista

def MayorEdad(datos):
    print("Total de personas mayores de edad")
    personas = 0
    for i in datos:
        if i.get("edad") >=18:
            personas = personas +1
    
    print("Existen ", personas, "mayores de edad")
    return personas

