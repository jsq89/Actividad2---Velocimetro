// Actividad 2 - Velocimetro

import UIKit

// ------------------------ Bloque Enumeración Velocidades -------------------------//
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

// ------------------------------- Bloque Clase Auto -------------------------------//
class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let velocidadActual : Int = self.velocidad.rawValue
        let velocidadActualEnCadena : String
        switch (self.velocidad.hashValue){
        case 0:
            velocidadActualEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        case 1:
            velocidadActualEnCadena = "Velocidad baja"
            self.velocidad = Velocidades.VelocidadMedia
        case 2:
            velocidadActualEnCadena = "Velocidad media"
            self.velocidad = Velocidades.VelocidadAlta
        case 3:
            velocidadActualEnCadena = "Velocidad alta"
            self.velocidad = Velocidades.VelocidadMedia
        default:
            // En caso de error pondremos apagado el velocimetro
            velocidadActualEnCadena = "Apagado"
            self.velocidad = Velocidades.Apagado
        }
        return (velocidadActual, velocidadActualEnCadena)
    }

}

// ---------------------------------- Bloque Pruebas ----------------------------------//
var auto : Auto = Auto()

var velocidadActual : Int
var velocidadActualEnCadena : String

for i in 1...20 {
    (velocidadActual,velocidadActualEnCadena)=auto.cambioDeVelocidad()
    print("\(velocidadActual) , \(velocidadActualEnCadena)")
}