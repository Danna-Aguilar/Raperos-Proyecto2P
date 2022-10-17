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
        Raperos.append(raperos(Rapero:"Snoop Dog", Edad:"58 años", Nombre: "Calvin Cordozar Broadus",FechaNaci: "20 de Oct de 1971 ", Nacionalidad:"Estadounidense", Ciudad: "Long Beach", Activo: "1991 - presente", Educacion: "Comptom College", fotito: "Snoop"))
        Raperos.append(raperos(Rapero:"Eminem", Edad:"49 años", Nombre: "Marshall Bruce Mathers III", FechaNaci: "17 de Oct de 1972 ", Nacionalidad:"Estadounidense", Ciudad: "Clinton", Activo: "1988 - presente", Educacion: "Oak Park High School ", fotito:"eminem" ))
        Raperos.append(raperos(Rapero:"Tupac", Edad:"1971 - 1996", Nombre: "Tupac Amaru Shakur",FechaNaci: "16 de junio de 1971 ", Nacionalidad:"Americana", Ciudad: "Los angeles", Activo: "1989-1996", Educacion: "Escuela de Artes de Baltimore", fotito: "tupac"))
        Raperos.append(raperos(Rapero:"Jay-Z", Edad:"52 años", Nombre: "Shawn Corey Carter",FechaNaci: "4 de diciembre de 1969 ", Nacionalidad:"Americana", Ciudad: "Los angeles", Activo: "1988-presente", Educacion: "Trenton Central High School", fotito: "jayz"))
        Raperos.append(raperos(Rapero:"Canserbero", Edad:"1988 - 2015 ", Nombre: "Tyrone José González",FechaNaci: "11 de marzo de 1988 ", Nacionalidad:"Venezolana", Ciudad: "Los angeles", Activo: "2000-2015", Educacion: "    Universidad Bicentenaria de Aragua", fotito: "canserbero"))
        Raperos.append(raperos(Rapero:"Dr. Dre", Edad:"57 años", Nombre: "Andre Romelle Young",FechaNaci: "18 de febrero de 1965 ", Nacionalidad:"Americana", Ciudad: "California", Activo: "1983–presente", Educacion: "Centennial High School ", fotito: "dr.dre"))
        Raperos.append(raperos(Rapero:"The Notorious B.I.G.", Edad:"1972 - 1997", Nombre: "Calvin Cordozar Broadus",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "notorious"))
        Raperos.append(raperos(Rapero:"Kendrick Lamar", Edad:"35 años", Nombre: "Kendrick Lamar Duckworth",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "kendrik"))
        Raperos.append(raperos(Rapero:"Ice Cube", Edad:"53 años", Nombre: "O'Shea Jackson Sr",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "ice"))
        Raperos.append(raperos(Rapero:"Nas", Edad:"49 años", Nombre: "Nasir bin Olu Dara Jones",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "nas"))
        Raperos.append(raperos(Rapero:"Kanye West ", Edad:"45 años", Nombre: "Kanye Omari West",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "kanye"))
        Raperos.append(raperos(Rapero:"50 Cent", Edad:"47 años", Nombre: "Curtis James Jackson",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "50cent"))
        Raperos.append(raperos(Rapero:"Drake", Edad:"35 años", Nombre: "Aubrey Drake Graham",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "drake"))
        Raperos.append(raperos(Rapero:"Tyler, the Creator", Edad:"31 años", Nombre: "Tyler Gregory Okonma",FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "tyler"))
        Raperos.append(raperos(Rapero:"Residente", Edad:"44 años", Nombre: "René Pérez Joglars", FechaNaci: "16 oct, ", Nacionalidad:"americana", Ciudad: "Los angeles", Activo: "1545", Educacion: "Harvard", fotito: "residente"))
        
        
        Raperos[0].Canciones.append(canciones(Cancion: "Sexual Eruption", Disco: "Ego Trippin", Año: "2008"))
        Raperos[0].Canciones.append(canciones(Cancion: "Beautiful", Disco: "Paid tha Cost to Be da Boss", Año: "2002"))
        Raperos[0].Canciones.append(canciones(Cancion: "Gin and Juice", Disco: "Sueños dorados", Año: "1993"))
        Raperos[0].Canciones.append(canciones(Cancion: "Beautiful", Disco: "Paid tha Cost to Be da Boss", Año: "2002"))
        Raperos[0].Canciones.append(canciones(Cancion: "Beautiful", Disco: "Paid tha Cost to Be da Boss", Año: "2002"))

        Raperos[1].Canciones.append(canciones(Cancion: "Without Me", Disco: "The Eminem Show", Año: "2002"))
        Raperos[1].Canciones.append(canciones(Cancion: "The Real Slim Shady", Disco: "The Marshall Mathers LP", Año: "2000"))
        Raperos[1].Canciones.append(canciones(Cancion: "Ass Like That", Disco: "Encore", Año: "2004"))
        Raperos[1].Canciones.append(canciones(Cancion: "Superman", Disco: "The Eminem Show", Año: "2002"))
        Raperos[1].Canciones.append(canciones(Cancion: "Venom", Disco: "Kamikaze", Año: "2018"))
        
        Raperos[2].Canciones.append(canciones(Cancion: "Hit Em Up", Disco: "Greatest Hits", Año: "2009"))
        Raperos[2].Canciones.append(canciones(Cancion: "Changes", Disco: "Greatest Hits", Año: "2009"))
        Raperos[2].Canciones.append(canciones(Cancion: "Can’t C Me", Disco: "All Eyez on Me", Año: "1996"))
        Raperos[2].Canciones.append(canciones(Cancion: "How Do U Want It", Disco: "All Eyez on Me", Año: "1996"))
        Raperos[2].Canciones.append(canciones(Cancion: "So Many Tears", Disco: "Me Against the World", Año: "1995"))

        Raperos[3].Canciones.append(canciones(Cancion: "Empire State Of Mind", Disco: "The Blueprint 3", Año: "2009"))
        Raperos[3].Canciones.append(canciones(Cancion: "The Story of O.J.", Disco: "4:44", Año: "2017"))
        Raperos[3].Canciones.append(canciones(Cancion: "Song Cry", Disco: "The Blueprint", Año: "2001"))
        Raperos[3].Canciones.append(canciones(Cancion: "Young Forever", Disco: "The Blueprint 3", Año: "2009"))
        Raperos[3].Canciones.append(canciones(Cancion: "Niggas in Paris", Disco: "Watch the Throne", Año: "2011"))
        
        Raperos[4].Canciones.append(canciones(Cancion: "Maquiavélico", Disco: "Muerte", Año: "2012"))
        Raperos[4].Canciones.append(canciones(Cancion: "Es épico", Disco: "Muerte", Año: "2012"))
        Raperos[4].Canciones.append(canciones(Cancion: "Pensando en ti", Disco: "Vida", Año: "2010"))
        Raperos[4].Canciones.append(canciones(Cancion: "Llovía", Disco: "PrimoBeatz en las Bases", Año: "2012"))
        Raperos[4].Canciones.append(canciones(Cancion: "Y la felicidad qué", Disco: "Vida", Año: "2010"))
        
        Raperos[5].Canciones.append(canciones(Cancion: "Centennial High School ", Disco: "2001", Año: "1999"))
        Raperos[5].Canciones.append(canciones(Cancion: "Still D.R.E.", Disco: "2001", Año: "1999"))
        Raperos[5].Canciones.append(canciones(Cancion: "I Need a Doctor", Disco: "I Need a Doctor", Año: "2001"))
        Raperos[5].Canciones.append(canciones(Cancion: "What’s The Difference", Disco: "2001", Año: "1999"))
        Raperos[5].Canciones.append(canciones(Cancion: "No Diggity", Disco: "Another Level", Año: "1996"))
        
        Raperos[6].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[6].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[6].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[6].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[6].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[7].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[7].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[7].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[7].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[7].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[8].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[8].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[8].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[8].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[8].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[9].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[9].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[9].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[9].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[9].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[10].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[10].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[10].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[10].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[10].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[11].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[11].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[11].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[11].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[11].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[12].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[12].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[12].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[12].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[12].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[13].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[13].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[13].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[13].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[13].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        
        Raperos[14].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[14].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[14].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[14].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))
        Raperos[14].Canciones.append(canciones(Cancion: "mnbm", Disco: "fgd", Año: "7000"))














        
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
        
        celda.lblimage.layer.cornerRadius = celda.lblimage.frame.size.width / 12
        celda.lblimage.clipsToBounds = true
        //celda.lblimage.layer.cornerRadius = 10
        //celda.lblimage.layer.borderWidth = 2
        
        celda.lblimage.image = UIImage(named:Raperos[indexPath.row].fotito)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 122
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRaperosController
        destino.raperos = Raperos[tvRaperos.indexPathForSelectedRow! .row]
    }
   
    

}

