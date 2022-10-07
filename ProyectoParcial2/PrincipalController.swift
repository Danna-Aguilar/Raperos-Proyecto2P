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
    
    @IBOutlet weak var tvRaperos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Raperos.append(raperos(Rapero:"Snoop Dog", Edad:"58 años", Nombre: "Calvin Cordozar Broadus",FechaNaci: "20 de Oct de 1971, ", Nacionalidad:"Estadounidense", Ciudad: "Long Beach", Activo: "1991 - presente", Educacion: "Comptom College"))
        Raperos.append(raperos(Rapero:"Eminem", Edad:"49 años", Nombre: "Marshall Bruce Mathers III", FechaNaci: "17 de Oct de 1972, ", Nacionalidad:"Estadounidense", Ciudad: "Clinton", Activo: "1988 - presente", Educacion: "Oak Park High School " ))
        Raperos.append(raperos(Rapero:"Tupac", Edad:"1971 - 1996", Nombre: "Tupac Amaru Shakur",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Jay-Z", Edad:"52 años", Nombre: "Shawn Corey Carter",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Canserbero", Edad:"1988 - 2015 ", Nombre: "Tyrone José González",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Dr. Dre", Edad:"57 años", Nombre: "Andre Romelle Young",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"The Notorious B.I.G.", Edad:"1972 - 1997", Nombre: "Calvin Cordozar Broadus",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Kendrick Lamar", Edad:"35 años", Nombre: "Kendrick Lamar Duckworth",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Ice Cube", Edad:"53 años", Nombre: "O'Shea Jackson Sr",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Nas", Edad:"49 años", Nombre: "Nasir bin Olu Dara Jones",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Kanye West ", Edad:"45 años", Nombre: "Kanye Omari West",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"50 Cent", Edad:"47 años", Nombre: "Curtis James Jackson",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Drake", Edad:"35 años", Nombre: "Aubrey Drake Graham",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Tyler, the Creator", Edad:"31 años", Nombre: "Tyler Gregory Okonma",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        Raperos.append(raperos(Rapero:"Residente", Edad:"44 años", Nombre: "René Pérez Joglars", FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard"))
        
        
        Raperos[0].Raperos.append(Raperitos(Cancion: "Nuthing", Disco: "ashton", Año: "2011"))
        Raperos[0].Raperos.append(Raperitos(Cancion: "else", Disco: "tron", Año: "2004"))
        Raperos[1].Raperos.append(Raperitos(Cancion: "ewe", Disco: "tbc", Año: "2540"))
        Raperos[1].Raperos.append(Raperitos(Cancion: "eytg", Disco: "tqwe", Año: "7540"))
        Raperos[2].Raperos.append(Raperitos(Cancion: "qewr", Disco: "tbc", Año: "2540"))
        Raperos[2].Raperos.append(Raperitos(Cancion: "mnbm", Disco: "fgd", Año: "7000"))


        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Raperos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRapero") as! CeldaRaperoController
        celda.lblRapero.text = Raperos[indexPath.row].Rapero
        celda.lblEdad.text = Raperos[indexPath.row].Edad
        celda.lblNombre.text = Raperos[indexPath.row].Nombre
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRaperosController
        destino.raperos = Raperos[tvRaperos.indexPathForSelectedRow! .row]
    }
   
    

}

