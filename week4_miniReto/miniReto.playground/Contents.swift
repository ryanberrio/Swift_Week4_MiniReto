//: mini Reto week4

/*
Instrucciones:

Crea un playground que contenga los elementos para representar un velocímetro de un automóvil. Recuerda que estamos practicando la programación orientada a objetos y primero debes diseñar la clase, enumeraciones o estructuras para llevarlas a un aplicación móvil. ¿Qué debes de realizar?

Declara la enumeración: Velocidades, sus valores serán de tipo Int.
La enumeración Velocidades cuenta con los siguientes elementos y sus respectivos valores:
- Apagado = 0, representa la velocidad 0.

- VelocidadBaja = 20, representa una velocidad de 20km por hora.

- VelocidadMedia = 50, representa una velocidad de 50km por hora

- VelocidadAlta = 120, representa una velocidad de 50km por hora.

- Además, debes de declarar un inicializador que recibe un velocidad:

- init( velocidadInicial : Velocidades )

- El inicializador se debe asignar a self el valor de velocidadInicial

Declara la clase: Auto
La clase Auto tiene los siguientes atributos:
- Una variable que sea una instancia de la enumeración Velocidades, llamada: velocidad.

Las funciones o métodos que define la clase Auto son las siguientes:
- init( ), agrega la función inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado. Recuerda que la enumeración tiene su función inicializadora.

- func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String), la función cambioDeVelocidad, cambia el valor de velocidad a la siguiente velocidad gradual, por ejemplo:  Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecución cambia a la siguiente velocidad.. si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.

Pruebas de la clase:
- En el mismo playground prueba crea una instancia de la clase Auto, llamada auto.

- Itera 20 veces usando un for, llama a la función cambioDeVelocidad e imprime los valores de la tupla en la consola.

- Una salida válida con cinco iteraciones es:

0 , Apagado
20, Velocidad baja
50, Velocidad media
120, Velocidad alta
50, Velocidad media
120, Velocidad alta
50, Velocidad media
120, Velocidad alta
50, Velocidad media
… etc.

*/


/*
Criterios del mini reto

1. ¿El playground se encuentra en GitHub?
2. ¿El playground está hecho en Swift?
3. ¿Se declara la enumeración: Velocidades y sus valores de tipo Int.?
4. ¿Dentro de la enumeración Velocidades se cuenta con los elementos de: Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 y VelocidadAlta = 120?
5. ¿La enumeración Velocidades, cumple con la función inicializadora:  init( velocidadInicial : Velocidades ) El inicializador se debe asignar a self el valor de velocidadInicial?
6. ¿Se declara la clase: Auto?
7. ¿La clase Auto cuenta con una instancia de la enumeración Velocidades, llamada: velocidad?
8. ¿La clase Auto implementa el método: init( )?
9. ¿La clase Auto implementa la función: func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) y sus reglas de ejecución?
10. ¿Se realiza la prueba de la clase Auto, iterando 20 veces el método cambioDeVelocidad() y sus salidas se observan en la consola?

*/


import UIKit

enum Velocidades : Int { //Cumplimiento de criterio 3.

    //Cumplimiento de criterio 4.
    case Apagado = 0 //representa la velocidad 0.
    case VelocidadBaja = 20 //representa una velocidad de 20km por hora.
    case VelocidadMedia = 50 //representa una velocidad de 50km por hora
    case VelocidadAlta = 120 //representa una velocidad de 50km por hora.
    
    init( velocidadInicial : Velocidades ) { //Cumplimiento de criterio 5.
        self = velocidadInicial
    }

}

class Auto { //Cumplimiento de criterio 6.

    var velocidad : Velocidades //Cumplimiento de criterio 7.
    
    init( ){ //Cumplimiento de criterio 8.
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    //Cumplimiento de criterio 9.
    func cambioDeVelocidad () -> ( actual : Int, velocidadEnCadena: String) {
        var actual : Int = velocidad.rawValue
        var velocidadEnCadena : String = ""
        
        switch actual{
        case Velocidades.Apagado.rawValue:
            velocidad = .VelocidadBaja
            velocidadEnCadena = "Velocidad baja"
        case Velocidades.VelocidadBaja.rawValue:
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        case Velocidades.VelocidadMedia.rawValue:
            velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad alta"
        case Velocidades.VelocidadAlta.rawValue:
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        default:
            velocidad = .Apagado
            velocidadEnCadena = "Apagado"
        }
        actual = velocidad.rawValue
        return (actual, velocidadEnCadena)
    }
    
}

var auto = Auto()

var actual : Int = 0
var velocidadEnCadena : String = ""

//Cumplimiento de criterio 10.
for i in 1...20 {
    (actual: actual, velocidadEnCadena : velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(i). \(actual), \(velocidadEnCadena)")
}
