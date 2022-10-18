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
        Raperos.append(raperos(Rapero:"The Notorious B.I.G.", Edad:"1972 - 1997", Nombre: "Calvin Cordozar Broadus",FechaNaci: "21 de mayo de 1972 ", Nacionalidad:"Americana", Ciudad: "California",Activo: "1992-1997", Educacion: "Harvard", fotito: "notorious"))
        Raperos.append(raperos(Rapero:"Kendrick Lamar", Edad:"35 años", Nombre: "Kendrick Lamar Duckworth",FechaNaci: "17 de junio de 1987", Nacionalidad:"Americana", Ciudad: "Compton", Activo: "2004–presente", Educacion: "Centennial High School", fotito: "kendrik"))
        Raperos.append(raperos(Rapero:"Ice Cube", Edad:"53 años", Nombre: "O'Shea Jackson Sr",FechaNaci: "15 de junio de 1969 ", Nacionalidad:"Americana", Ciudad: "Los angeles", Activo: "2000-2020", Educacion: "Harvard", fotito: "ice"))
        Raperos.append(raperos(Rapero:"Nas", Edad:"49 años", Nombre: "Nasir bin Olu Dara Jones",FechaNaci: "14 de septiembre de 1973 ", Nacionalidad:"Americana", Ciudad: "New York", Activo: "1991 - Presente", Educacion: "Columbia", fotito: "nas"))
        Raperos.append(raperos(Rapero:"Kanye West ", Edad:"45 años", Nombre: "Kanye Omari West",FechaNaci: "8 de junio de 1977 ", Nacionalidad:"Americana", Ciudad: "Georgia", Activo: "2010 - Presente", Educacion: "Rock/Afell", fotito: "kanye"))
        Raperos.append(raperos(Rapero:"50 Cent", Edad:"47 años", Nombre: "Curtis James Jackson",FechaNaci: "6 de julio de 1975 ", Nacionalidad:"Americana", Ciudad: "Queens", Activo: "1996-presente", Educacion: "Andrew Jackson High School", fotito: "50cent"))
        Raperos.append(raperos(Rapero:"Drake", Edad:"35 años", Nombre: "Aubrey Drake Graham",FechaNaci: "24 de octubre de 1986 ", Nacionalidad:"Americana", Ciudad: "Toronto", Activo: "2006-presente", Educacion: "Forest Hill Collegiate Institute", fotito: "drake"))
        Raperos.append(raperos(Rapero:"Tyler, the Creator", Edad:"31 años", Nombre: "Tyler Gregory Okonma",FechaNaci: "6 de marzo de 1991 ", Nacionalidad:"Americana", Ciudad: "California", Activo: "2005 - Presente", Educacion: "Elk Grove High School", fotito: "tyler"))
        Raperos.append(raperos(Rapero:"Residente", Edad:"44 años", Nombre: "René Pérez Joglars", FechaNaci: "23 de febrero de 1978", Nacionalidad:"Venezolano", Ciudad: "San Juan", Activo: "2004-Presente", Educacion: "San Valle", fotito: "residente"))
        
        
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
        
        Raperos[6].Canciones.append(canciones(Cancion: "Hypnotize", Disco: "Life After Death", Año: "1997"))
        Raperos[6].Canciones.append(canciones(Cancion: "Suicidal Thoughts", Disco: "Ready to dead", Año: "1994"))
        Raperos[6].Canciones.append(canciones(Cancion: "Mo Money Mo Problems", Disco: "Life After Death", Año: "1996"))
        Raperos[6].Canciones.append(canciones(Cancion: "Biggie", Disco: "Born Again", Año: "1995"))
        Raperos[6].Canciones.append(canciones(Cancion: "Get Money", Disco: "Greatest Hits", Año: "1994"))
        
        Raperos[7].Canciones.append(canciones(Cancion: "Bad blood ", Disco: "1989", Año: "2014"))
        Raperos[7].Canciones.append(canciones(Cancion: "All the starts", Disco: "Crowd Pleasers, Vol. II ", Año: "2015"))
        Raperos[7].Canciones.append(canciones(Cancion: "Bitch, Don't Kill My Vibe ", Disco: "Good Kid, M.A.A.D. City", Año: "2012"))
        Raperos[7].Canciones.append(canciones(Cancion: "Swimming Pools ", Disco: "Good Kid, M.A.A.D. City", Año: "2012"))
        Raperos[7].Canciones.append(canciones(Cancion: "We Cry Together", Disco: "Mr. Morale & the Big Steppers ", Año: "2002"))
        
        Raperos[8].Canciones.append(canciones(Cancion: "It Was a Good Day", Disco: "The Predator", Año: "1992"))
        Raperos[8].Canciones.append(canciones(Cancion: "Ain't Got No Haters", Disco: "Everythang's Corrupt", Año: "2018"))
        Raperos[8].Canciones.append(canciones(Cancion: "Check Yo Self", Disco: "The Predator", Año: "1992"))
        Raperos[8].Canciones.append(canciones(Cancion: "Fuck Tha Police", Disco: "Straight Outta Compton", Año: "1998"))
        Raperos[8].Canciones.append(canciones(Cancion: "Dopeman ", Disco: "N.W.A. and the Posse", Año: "1987"))
        
        Raperos[9].Canciones.append(canciones(Cancion: "Get Down", Disco: "Gods son", Año: "2002"))
        Raperos[9].Canciones.append(canciones(Cancion: "Life’s a Bitch", Disco: " Illmatic ", Año: "1994"))
        Raperos[9].Canciones.append(canciones(Cancion: "If I Ruled the World", Disco: "It Was Written", Año: "1996"))
        Raperos[9].Canciones.append(canciones(Cancion: "Ether ", Disco: "Stillmatic", Año: "2001"))
        Raperos[9].Canciones.append(canciones(Cancion: "Wave", Disco: "Magic", Año: "2021"))
        
        Raperos[10].Canciones.append(canciones(Cancion: "Praise God", Disco: "Donda", Año: "2021"))
        Raperos[10].Canciones.append(canciones(Cancion: "Violent Crimes", Disco: "Donda", Año: "2021"))
        Raperos[10].Canciones.append(canciones(Cancion: "Dark Fantasy", Disco: "My beautfiul dark ", Año: "2010"))
        Raperos[10].Canciones.append(canciones(Cancion: "Niggas in Paris", Disco: "Watch the Throne", Año: "2011"))
        Raperos[10].Canciones.append(canciones(Cancion: "Stronger", Disco: "Graduation", Año: "2007"))
        
        Raperos[11].Canciones.append(canciones(Cancion: "In da Club", Disco: "Get Rich or Die Tryin", Año: "2003"))
        Raperos[11].Canciones.append(canciones(Cancion: "Best Friend", Disco: "Get Rich or Die Tryin", Año: "2003"))
        Raperos[11].Canciones.append(canciones(Cancion: "Outta Control", Disco: "The Massacre", Año: "2005"))
        Raperos[11].Canciones.append(canciones(Cancion: "Don’t Push Me", Disco: "Get Rich or Die Tryin", Año: "2003"))
        Raperos[11].Canciones.append(canciones(Cancion: "Right There", Disco: "Killer Love", Año: "2011"))
        
        Raperos[12].Canciones.append(canciones(Cancion: "One Dance ", Disco: "View", Año: "2016"))
        Raperos[12].Canciones.append(canciones(Cancion: "Feel No Ways", Disco: "View", Año: "2016"))
        Raperos[12].Canciones.append(canciones(Cancion: "Toosie Slide Toosie", Disco: "Slide", Año: "2020"))
        Raperos[12].Canciones.append(canciones(Cancion: "Trust Issues", Disco: "Care", Año: "2019"))
        Raperos[12].Canciones.append(canciones(Cancion: "Sticky", Disco: "Honestly, Nevermind", Año: "2022"))
        
        Raperos[13].Canciones.append(canciones(Cancion: "New magic wand", Disco: "Igor", Año: "2019"))
        Raperos[13].Canciones.append(canciones(Cancion: "Gone, gone / thank you", Disco: "Igor", Año: "2019"))
        Raperos[13].Canciones.append(canciones(Cancion: "Best interest", Disco: "Best interest", Año: "2020"))
        Raperos[13].Canciones.append(canciones(Cancion: "A boy is a gun*", Disco: "Igor", Año: "2019"))
        Raperos[13].Canciones.append(canciones(Cancion: "Garden Shed", Disco: "Flower boy", Año: "2017"))
        
        Raperos[14].Canciones.append(canciones(Cancion: "Atrévete-te-te", Disco: "Calle 13", Año: "2005"))
        Raperos[14].Canciones.append(canciones(Cancion: "La vuelta al mundo", Disco: "Entre los que nos quieren", Año: "2010"))
        Raperos[14].Canciones.append(canciones(Cancion: "Bellacoso", Disco: "Bellacoso", Año: "2019"))
        Raperos[14].Canciones.append(canciones(Cancion: "Ojos color sol", Disco: "Multi viral", Año: "2014"))
        Raperos[14].Canciones.append(canciones(Cancion: "This is not america", Disco: "This is not america", Año: "2022"))














        
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

