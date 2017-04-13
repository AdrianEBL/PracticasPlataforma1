//
//  ViewController.swift
//  2DA_EVA_3_RESTAURANTES
//
//  Created by  on 08/03/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Creamos el primer array para introducir los datos que apareceran dentro de las celdas
    let misDatos = ["Barra Fina","Bourke Street Bakery","Cafe Dead End","Cafe Loisl","Cafe Lore", "Confessional","Donostia","Five Leaves","Forkee Restaurant","Graham Avenuemeats","Haighs Chocolate","Homei","Palomino espresso","Petiteoyster","Posatelier","Royaloak","Teakha","Thai Cafe","Traif","Upstate","Waffle Wolf"]
    //Creamos el segundo array para introducir las imagenes asociadas a los datos que se colocaran en cada celda
    let imFond = [UIImage(named: "barrafina"), UIImage(named: "bourkestreetbakery"), UIImage(named: "cafedeadend"), UIImage(named: "cafeloisl"), UIImage(named: "cafelore"), UIImage(named: "confessional"), UIImage(named: "donostia"), UIImage(named: "fiveleaves"), UIImage(named: "forkeerestaurant"), UIImage(named: "grahamavenuemeats"), UIImage(named: "haighschocolate"), UIImage(named: "homei"), UIImage(named: "palominoespresso"), UIImage(named: "petiteoyster"), UIImage(named: "posatelier"), UIImage(named: "royaloak"), UIImage(named: "teakha"), UIImage(named: "thaicafe"), UIImage(named: "traif"), UIImage(named: "upstate"), UIImage(named: "wafflewolf")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Validamos cuantas celdas tendran que crearse en pantalla mediante una condicional en la que se revisara cual de los dos arreglos anteriores tiene mayor numero de elementos, por lo que en caso de encontrar mas datos solo se crearan las celdas correspondientes a cada imagen, en caso contrario se crearan las celdas correspondientes al numero de datos
        if (misDatos.count >= imFond.count){
            return imFond.count
        } else {
            return misDatos.count
        }
    }
    
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        //Se crea e inicia la constante controlador para colocar los datos posteriormente en las celdas
        let controlador = UIAlertController(title: "Tus datos", message: misDatos[indexPath.row], preferredStyle: .Alert)
        //Se crea e inicia la constante boton para psoteriormente brindar la animacion de boton en cada una de las celdas
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        //Agregamos la accion del boton a cada una de las celdas
        controlador.addAction(boton)
        //Presentamos los datos en la pantalla ordenados por celda
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        if celda == nil {
            celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        }
        celda?.textLabel?.text = misDatos[indexPath.row]
        let imClick = UIImage(named: "star-b")
        celda?.imageView?.image = imFond[indexPath.row]
        celda?.imageView?.highlightedImage = imClick
        return celda!
    }
    

}

