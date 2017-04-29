//
//  ViewController.swift
//  2DA_EVA_4_RESTAURANTES2
//
//  Created by  on 10/03/17.
//  
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Creamos el array para introducir los datos que apareceran dentro de las celdas
    let misDatos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
    //Funcion encargada de recibir el numero de celdas para la tabla
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count //Regresara el numero de datos del arreglo para crear las celdas correspondientes
    }

    //Funcion encargada de escuchar cuando se selecciona una celda e indicar cual celda se ha seleccionado
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //Se crea e inicia un controlador para colocar los datos de la celda que sea seleccionada
        let controlador = UIAlertController(title: "Tus Datos", message: misDatos[indexPath.row], preferredStyle: .Alert)
        //Se crea e inicia un boton que posteriormente sera usado para cerrar la ventana de alerta
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil) //detecta los click
        controlador.addAction(boton) //Agregamos el boton con sus respectivas propiedades a controlador
        presentViewController(controlador, animated: true, completion: nil) //Presentamos los datos que conforman a controlador el cual a su vez incluye un boton 
    }
    
    //Funcion para rellenar las celdas de la tabla con la informacion correspondiente al indice de las celdas, esto conforme se cargan en el area de la pantalla
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { //cellforRow reutiliza las celdas
        
        //Se crea una celda generica para reutilizarla las veces que sean necesarias
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        //Se cargan los datos que rellenaran las celdas de acuerdo al indice de cada una ellas
        celda.lblNombre.text = misDatos[indexPath.row]
        celda.lblUbica.text = "Chihuahua"
        celda.lblDesc.text = "Far Far Away..."
        let img = UIImage(named: misDatos[indexPath.row])
        celda.imgImagen.image = img
        
        return celda
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
        
    }

    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + misDatos[indexPath.row]
        let miImagen = UIImage(named: misDatos[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }

}

