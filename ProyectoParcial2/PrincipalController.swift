//
//  ViewController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 03/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class PrincipalController: UIViewController,
    UITableViewDelegate, UITableViewDataSource {
    var Raperos: [raperos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        raperos.append(raperos(rapero:"Snoop Dog", edad:"58", nombre: "Calvin Cordozar Broadus"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raperos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRapero") as! CeldaRaperoController
        celda.lblRapero.text = raperos[indexPath.row].Rapero
        celda.lblEdad.text = raperos[indexPath.row].Edad
        celda.lblNombre.text = raperos[indexPath.row].Nombre
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
   
    

}

