//
//  raperos.swift
//  ProyectoParcial2
//
//  Created by Alumno on 03/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

class Raperos {
    
    var Rapero: String
    var Edad: String
    var Nombre: String
    var FechaNaci: String
    var Nacionalidad: String
    var Ciudad: String
    var Activo: String
    var Educacion: String
    var Canciones: [canciones] = []
    
    init (Rapero:String, Edad:String, Nombre:String, FechaNaci:String, Nacionalidad:String, Ciudad:String, Activo:String, Educacion:String){
        self.Rapero = Rapero
        self.Edad = Edad
        self.Nombre = Nombre
        self.FechaNaci = FechaNaci
        self.Nacionalidad = Nacionalidad
        self.Ciudad = Ciudad
        self.Activo = Activo
        self.Educacion = Educacion
    }
    
}
