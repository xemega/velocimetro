// Playground - Velocimetro
// Autor: César Méndez
// Gracias por la revisión, ¡saludos!

import UIKit

enum Velocidades: Int {
    case Apagado = 0, //representa la velocidad 0.
    VelocidadBaja = 20, //epresenta una velocidad de 20km por hora.
    VelocidadMedia = 50, //representa una velocidad de 50km por hora.
    VelocidadAlta = 120 //representa una velocidad de 120km por hora.
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
 
}


class Auto{
    var velocidad : Velocidades
    var velNumero : Int
    
    init(){
        self.velocidad = .Apagado
        velNumero = self.velocidad.rawValue
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String ){
        let velTexto : String
        velNumero = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            velTexto = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            velTexto = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            velTexto = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            velTexto = "Velocidad Alta"
        }
        
        return (actual: velNumero, velocidadEnCadena: velTexto)
    }
    
}

var autoNuevo = Auto()
var resultado : (actual : Int, velocidadEnCadena : String )

for _ in 1...20 {
    
    resultado = autoNuevo.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}


