//
//  DetallesRaperos.swift
//  ProyectoParcial2
//
//  Created by Alumno on 05/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//
import UIKit

class DetallesRaperosController: UIViewController {
    
    
    var raperos : raperos?
    
    //OUTLETSSSS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles Rapero"
        
        if raperos != nil {
            //self.title = raperos?.titulo
            //lblDirector.text = pelicula?.año
            //lblAño.text = pelicula?.director
            
        }
        

    }
}
