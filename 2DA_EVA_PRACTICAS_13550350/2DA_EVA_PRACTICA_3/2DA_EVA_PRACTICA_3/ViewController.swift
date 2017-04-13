//
//  ViewController.swift
//  2DA_EVA_PRACTICA_3
//
//  Created by  on 28/03/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var lblarMateria: UILabel!
    
    //Creamos el primer array para introducir los datos que apareceran dentro de las celdas
    let misDatos = ["Fundamentos de Programación","Programación Orientada a Objetos","Estructura de Datos","Tópicos Avanzados de Programación","Fundamentos de Bases de Datos", "Fundamentos de Telecomunicaciones","Taller de Bases de Datos","Redes de Computadoras","Administración de Bases de Datos","Conmutación y Enrutamiento en Redes de Datos","Fundamentos de las Comunicaciones Móviles","Sistemas Operativos para Dispositivos Móviles","Administración de Redes","Programación Web","Programación de Dispositivos Móviles Plataforma I","Aplicaciones Web para Dispositivos Móviles","Programación de Dispositivos Móviles Plataforma II"]
    //Creamos el segundo array para introducir las imagenes asociadas a los datos que se colocaran en cada celda
    let imgFondo = ["FP", "POO", "ED", "TAP", "FBD", "FT", "TBD", "RC", "ABD", "CERD", "FCM", "SODM", "AR", "PW", "PDMP1", "AWDM", "PDMP2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Se crearan las celdas correspondientes al numero de datos
        return misDatos.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var semestre = ""
        let curso = misDatos[indexPath.row]
        let prog = "Programación"
        let redes = "Redes"
        let bdat = "Bases de Datos"
        
        switch curso {
            case "Fundamentos de Programación":
            semestre = "1er Semestre"
            lblarMateria.text = prog
            case "Programación Orientada a Objetos":
            semestre = "2do Semestre"
            lblarMateria.text = prog
            case "Estructura de Datos":
            semestre = "3er Semestre"
            lblarMateria.text = prog
            case "Tópicos Avanzados de Programación":
            semestre = "4to Semestre"
            lblarMateria.text = prog
            case "Fundamentos de Bases de Datos":
            semestre = "4to Semestre"
            lblarMateria.text = bdat
            case "Fundamentos de Telecomunicaciones":
            semestre = "5to Semestre"
            lblarMateria.text = redes
            case "Taller de Bases de Datos":
            semestre = "5to Semestre"
            lblarMateria.text = bdat
            case "Redes de Computadoras":
            semestre = "6to Semestre"
            lblarMateria.text = redes
            case "Administración de Bases de Datos":
            semestre = "6to Semestre"
            lblarMateria.text = bdat
            case "Conmutación y Enrutamiento en Redes de Datos":
            semestre = "7mo Semestre"
            lblarMateria.text = redes
            case "Fundamentos de las Comunicaciones Móviles":
            semestre = "7mo Semestre"
            lblarMateria.text = redes
            case "Sistemas Operativos para Dispositivos Móviles":
            semestre = "7mo Semestre"
            lblarMateria.text = prog
            case "Administración de Redes":
            semestre = "8vo Semestre"
            lblarMateria.text = redes
            case "Programación Web":
            semestre = "8vo Semestre"
            lblarMateria.text = prog
            case "Programación de Dispositivos Móviles Plataforma I":
            semestre = "8vo Semestre"
            lblarMateria.text = prog
            case "Aplicaciones Web para Dispositivos Móviles":
            semestre = "9no Semestre"
            lblarMateria.text = prog
            case "Programación de Dispositivos Móviles Plataforma II":
            semestre = "9no Semestre"
            lblarMateria.text = prog
        default:
            semestre = "Semestre"
        }
        
        let controlador = UIAlertController(title: curso, message: "Curso de "+semestre, preferredStyle: .Alert)
        let boton = UIAlertAction (title: "Ok", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        celda.lblMateria.text = misDatos[indexPath.row]
        let img = UIImage(named: imgFondo[indexPath.row])
        celda.imgImagen.image = img
        let imClick = UIImage(named: "tecnologia")
        celda.imgImagen.highlightedImage = imClick
        return celda
    }


}

