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
    
    @IBOutlet weak var lblimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles"
        
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
            //lblimage.layer.cornerRadius = 10
            //lblimage.layer.borderWidth = 10
            lblimage.layer.cornerRadius = lblimage.frame.size.width / 12
            lblimage.clipsToBounds = true
            lblimage.image = UIImage(named: "\(raperos!.fotito)2")

        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raperos!.Canciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaCanciones") as! CancionesController
        
        celda.lblCancion.text = raperos?.Canciones[indexPath.row].Cancion
        celda.lblDisco.text = raperos?.Canciones[indexPath.row].Disco
        celda.lblAño.text = raperos?.Canciones[indexPath.row].Año

        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
}


