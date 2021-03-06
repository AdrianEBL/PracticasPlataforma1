//
//  ViewController.swift
//  2DA_EVA_5_RESTAURANTES_3
//
//  Created by  on 15/03/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Creamos el primer array para introducir los datos que apareceran dentro de las celdas
    let misDatos = ["Barra Fina","Bourke Street Bakery","Cafe Dead End","Cafe Loisl","Cafe Lore", "Confessional","Donostia","Five Leaves","Forkee Restaurant","Graham Avenuemeats","Haighs Chocolate","Homei","Palomino espresso","Petiteoyster","Posatelier","Royaloak","Teakha","Thai Cafe","Traif","Upstate","Waffle Wolf"]
    //Creamos el segundo array para introducir las imagenes asociadas a los datos que se colocaran en cada celda
    let imgFondo = ["barrafina", "bourkestreetbakery", "cafedeadend", "cafeloisl", "cafelore", "confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats", "haighschocolate", "homei", "palominoespresso", "petiteoyster", "posatelier", "royaloak", "teakha", "thaicafe", "traif", "upstate", "wafflewolf"]

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
        //Se crea e inicia la constante controlador para colocar los datos posteriormente en las celdas
        let controlador = UIAlertController(title: "Restaurante", message: misDatos[indexPath.row], preferredStyle: .Alert)
        //Se crea e inicia la constante boton para psoteriormente brindar la animacion de boton en cada una de las celdas
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        //Agregamos la accion del boton a cada una de las celdas
        controlador.addAction(boton)
        //Presentamos los datos en la pantalla ordenados por celda
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        celda.lblNombre.text = misDatos[indexPath.row]
        celda.lblUbica.text = "Chihuahua"
        celda.lblDesc.text = "Far far away"
        //let img = imgFondo[indexPath.row]
        let img = UIImage(named: imgFondo[indexPath.row])
        celda.imgImagen.image = img
        return celda
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
    }
    
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + misDatos[indexPath.row]
        let miImagen = UIImage(named: imgFondo[indexPath.row])
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }


}

