/*
 * EJERCICIO:
 * - Crea ejemplos de funciones básicas que representen las diferentes
 *   posibilidades del lenguaje:
 *   Sin parámetros ni retorno, con uno o varios parámetros, con retorno...
 * - Comprueba si puedes crear funciones dentro de funciones.
 * - Utiliza algún ejemplo de funciones ya creadas en el lenguaje.
 * - Pon a prueba el concepto de variable LOCAL y GLOBAL.
 * - Debes hacer print por consola del resultado de todos los ejemplos.
 *   (y tener en cuenta que cada lenguaje puede poseer más o menos posibilidades)
 *
 * DIFICULTAD EXTRA (opcional):
 * Crea una función que reciba dos parámetros de tipo cadena de texto y retorne un número.
 * - La función imprime todos los números del 1 al 100. Teniendo en cuenta que:
 *   - Si el número es múltiplo de 3, muestra la cadena de texto del primer parámetro.
 *   - Si el número es múltiplo de 5, muestra la cadena de texto del segundo parámetro.
 *   - Si el número es múltiplo de 3 y de 5, muestra las dos cadenas de texto concatenadas.
 *   - La función retorna el número de veces que se ha impreso el número en lugar de los textos.
 *
 */

import Foundation

// MARK: - Excercise

func printNumbers(text1: String, text2: String) -> Int {
    var counter = 0
    
    for number in 1...100 {
        if number % 3 == 0 && number % 5 == 0 {
            print(text1 + text2)
        } else if number % 3 == 0 {
            print(text1)
        } else if number % 5 == 0 {
            print(text2)
        } else {
            print(number)
            counter += 1
        }
    }
    
    return counter
}

// Ejemplo de uso:
let printedTimes = printNumbers(text1: "Fizz", text2: "Buzz")
print("The times that the numbers are printed are: \(printedTimes)")


// MARK: - Basic function
func myFunction() {
    
}

// MARK: - Function with parameters and return
func createUser(name: String, age: Int) -> Bool {
    print("User name: \(name)")
    print("User age: \(age)")
    return true
}

// MARK: - Function with returning tuples
func getTwoValues() -> (String, String) {
    let name = "Carlos"
    let surname = "Díaz"
    return (name, surname)
}

// MARK: - Default values in parameters
func createDatabase(name: String, path: String = "/") {
    // Do something
}

createDatabase(name: "SwiftBetaDatabase")

// MARK: - Variadic parameters
// A variadic parameter function in Swift is a function that can accept a variable number of arguments of the same type. This means you can call the function with one or more values of the same type, and the function will treat them as a collection inside the function.

func arithmeticAverage(_ numbers: Double...) -> Double {
    var total: Double = 0
 
    for number in numbers {
        total += number
    }
 
    return total / Double(numbers.count)
}
 
arithmeticAverage(1,2,3,4,5)

// MARK: - INOUT parameters
//The inout parameters in Swift are a way of passing a variable to a function by reference, allowing the function to modify the value of the original variable outside of the function. Essentially, it enables the function to alter the values of the variables that are passed as arguments.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a

    a = b
    b = tempA
}

var someInt = 3
var anotherInt = 107

swapTwoInts(&someInt, &anotherInt)

print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

 
