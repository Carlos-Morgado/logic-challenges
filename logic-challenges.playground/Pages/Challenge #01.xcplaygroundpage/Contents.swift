/*
 * EJERCICIO:
 * - Crea ejemplos utilizando todos los tipos de operadores de tu lenguaje:
 *   Aritméticos, lógicos, de comparación, asignación, identidad, pertenencia, bits...
 *   (Ten en cuenta que cada lenguaje puede poseer unos diferentes)
 * - Utilizando las operaciones con operadores que tú quieras, crea ejemplos
 *   que representen todos los tipos de estructuras de control que existan
 *   en tu lenguaje:
 *   Condicionales, iterativas, excepciones...
 * - Debes hacer print por consola del resultado de todos los ejemplos.
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea un programa que imprima por consola todos los números comprendidos
 * entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
 *
 * Seguro que al revisar detenidamente las posibilidades has descubierto algo nuevo.
 */

import Foundation

// Research: https://www.lafactoriaapple.com/pdf/swift/condicionales/operadores-logicos-en-swift.pdf / https://swift-book-es.vercel.app/guia-del-lenguaje/operadores-basicos

// Operadores lógicos
// !
let entradaPermitida = false
if !entradaPermitida {
    print("ACCESO DENEGADO")
}
// && (Las dos condiciones tienen que ser verdaderas)
let ingresoCodigoPuerta = true
let aproboEscanerDeRetina = false
 
if ingresoCodigoPuerta && aproboEscanerDeRetina {
    print("¡Bienvenida!")
} else {
    print("ACCESO DENEGADO")
}
// || (Una de las dos condiciones tiene que ser verdadera)
let tieneLlaveDeLaPuerta = false
let conoceClaveMaestra = true
 
if tieneLlaveDeLaPuerta || conoceClaveMaestra {
    print("¡Bienvenida!")
} else {
    print("ACCESO DENEGADO")
}

// Operadores aritméticos
1 + 2
5 - 3
2 * 3
10.0 / 2.5

// Operador residual
9 % 4 // (9 = (4 × 2) + 1)

// Operador unario de resta
let tres = 3
let menosTres = -tres       // menosTres es igual a -3
let masTres = -menosTres    // masTres es igual a 3, o «menos menos tres»

// Operador unario de suma
let menosSeis = -6
let tambienMenosSeis = +menosSeis  // tambienMenosSeis es igual a -6

// Operador de asignación
let b = 10
var a = 5
a = b
let (x, y) = (1, 2)

// Operador de asignación compuesta
var exampleNumber = 1
exampleNumber += 2 // ahora, exampleNumber es igual a 3

// Operaciones de comparación
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

// Operadores condicional ternario
let alturaContenido = 40
let tieneEncabezado = true
let alturaFila = alturaContenido + (tieneEncabezado ? 50 : 20) // alturaFila es igual a 90

// Operador nil coalescing
var nombre: String? = "Juan"
let nombreDefinido = nombre ?? "Invitado"
print(nombreDefinido) // Imprimirá "Juan" porque 'nombre' tiene un valor

// Operadores de rango (cerrados, semiabiertos, unilaterales)
    // Abierto
for indice in 1...5 {
    print("\(indice) multiplicado por 5 es \(indice * 5)")
}
    // Semiabierto
let nombres = ["Ana", "Alejandro", "Cindy", "Laura"]
let conteo = nombres.count
for i in 0..<conteo {
    print("La persona #\(i + 1) se llama \(nombres[i])")
}

    // Unilateral
for nombre in nombres[2...] {
    print(nombre)
}
 
for nombre in nombres[...2] {
    print(nombre)
}

for nombre in nombres[..<2] {
    print(nombre)
}

// EJERCICIO FINAL

func esPar(_ numero: Int) -> Bool {
    return numero % 2 == 0
}

func esMultiploDeTres(_ numero: Int) -> Bool {
    return numero % 3 == 0
}

var numeros = [Int]()

for numero in 10...55 {
    if esPar(numero) && numero != 16 && !esMultiploDeTres(numero) {
        numeros.append(numero)
    }
}
    
print(numeros)
