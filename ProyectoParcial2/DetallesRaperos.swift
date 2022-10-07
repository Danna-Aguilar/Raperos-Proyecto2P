//
//  DetallesRaperos.swift
//  ProyectoParcial2
//
//  Created by Alumno on 05/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//
import UIKit

class DetallesRaperosController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    var raperos : raperos?
    
    //OUTLETSSSS
    @IBOutlet weak var lblNombresito: UILabel!
    @IBOutlet weak var lblRaperito: UILabel!
    @IBOutlet weak var lblEdadd: UILabel!
    @IBOutlet weak var lblFechaNaci: UILabel!
    @IBOutlet weak var lblNacionalidad: UILabel!
    @IBOutlet weak var lblCiudad: UILabel!
    @IBOutlet weak var lblActivo: UILabel!
    @IBOutlet weak var lblEducacion: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles Rapero"
        
        if raperos != nil {
            //self.title = raperos?.titulo
            lblNombresito.text = raperos?.Nombre
            lblRaperito.text = raperos?.Rapero
            lblEdadd.text = raperos?.Edad
            lblFechaNaci.text = raperos?.FechaNaci
            lblNacionalidad.text = raperos?.Nacionalidad
            lblCiudad.text = raperos?.Ciudad
            lblActivo.text = raperos?.Activo
            lblEducacion.text = raperos?.Educacion

        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raperos!.Raperos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCanciones") as! CancionesController
        
        celda.lblCancion.text = raperos?.Raperos[indexPath.row].Cancion
        celda.lblDisco.text = raperos?.Raperos[indexPath.row].Disco
        celda.lblAño.text = raperos?.Raperos[indexPath.row].Año

        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}


