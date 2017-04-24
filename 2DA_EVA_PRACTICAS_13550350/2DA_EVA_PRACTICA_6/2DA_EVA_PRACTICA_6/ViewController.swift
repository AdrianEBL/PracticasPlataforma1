//
//  ViewController.swift
//  2DA_EVA_PRACTICA_6
//
//  Created by  on 31/03/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbvwTabla: UITableView!
    @IBOutlet weak var lblNomR: UILabel!
    @IBOutlet weak var lblUbica: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    
    //Creamos el primer array para introducir los datos que apareceran dentro de las celdas
    let misDatos = ["Barra Fina","Bourke Street Bakery","Cafe Dead End","Cafe Loisl","Cafe Lore", "Confessional","Donostia","Five Leaves","Forkee Restaurant","Graham Avenuemeats","Haighs Chocolate","Homei","Palomino espresso","Petiteoyster","Posatelier","Royaloak","Teakha","Thai Cafe","Traif","Upstate","Waffle Wolf"]
    //Creamos el segundo array para introducir las imagenes asociadas a los datos que se colocaran en cada celda
    let imgFondo = ["barrafina", "bourkestreetbakery", "cafedeadend", "cafeloisl", "cafelore", "confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats", "haighschocolate", "homei", "palominoespresso", "petiteoyster", "posatelier", "royaloak", "teakha", "thaicafe", "traif", "upstate", "wafflewolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        lblNomR.text = misDatos[0]
        lblUbica.text = "New York"
        lblDesc.text = "Comida y meriendas"
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
    //Se declara la funcion que se encargara de rellenar las filas con los datos correspondientes, segun como vayan apareciendo en pantalla
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        
        celda.lblNombre.text = misDatos[indexPath.row]
        celda.lblLema.text = "Provecho"
        let img = UIImage(named: imgFondo[indexPath.row])
        celda.imgImagen.image = img
        let imClick = UIImage(named: "ico-tasa")
        celda.imgImagen.highlightedImage = imClick
        return celda
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        lblNomR.text = misDatos[indexPath.row]
        lblUbica.text = "New York"
        lblDesc.text = "Comida y meriendas"
        switch misDatos[indexPath.row] {
            case "Barra Fina":
                self.performSegueWithIdentifier("restaurantea", sender: self)
            case "Bourke Street Bakery":
                self.performSegueWithIdentifier("restauranteb", sender: self)
            case "Cafe Dead End":
                self.performSegueWithIdentifier("restaurantec", sender: self)
            case "Cafe Loisl":
                self.performSegueWithIdentifier("restauranted", sender: self)
            case "Cafe Lore":
                self.performSegueWithIdentifier("restaurantee", sender: self)
            case "Confessional":
                self.performSegueWithIdentifier("restaurantea", sender: self)
            case "Donostia":
                self.performSegueWithIdentifier("restauranteb", sender: self)
            case "Five Leaves":
                self.performSegueWithIdentifier("restaurantec", sender: self)
            case "Graham Avenuemeats":
                self.performSegueWithIdentifier("restauranted", sender: self)
            case "Haighs Chocolate":
                self.performSegueWithIdentifier("restaurantee", sender: self)
            case "Homei":
                self.performSegueWithIdentifier("restaurantea", sender: self)
            case "Palomino espresso":
                self.performSegueWithIdentifier("restauranteb", sender: self)
            case "Petiteoyster":
                self.performSegueWithIdentifier("restaurantec", sender: self)
            case "Posatelier":
                self.performSegueWithIdentifier("restauranted", sender: self)
            case "Royaloak":
                self.performSegueWithIdentifier("restaurantee", sender: self)
            case "Teakha":
                self.performSegueWithIdentifier("restaurantea", sender: self)
            case "Thai Cafe":
                self.performSegueWithIdentifier("restauranteb", sender: self)
            case "Traif":
                self.performSegueWithIdentifier("restaurantec", sender: self)
            case "Upstate":
                self.performSegueWithIdentifier("restauranted", sender: self)
            case "Waffle Wolf":
                self.performSegueWithIdentifier("restaurantee", sender: self)
        default:
            self.performSegueWithIdentifier("restaurantea", sender: self)
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "restaurantea" {
            if let indexPath = tbvwTabla.indexPathForSelectedRow {
                let miViewController = segue.destinationViewController as! RestauranteAViewController
                miViewController.sTexto = misDatos[indexPath.row]
                miViewController.sImagen = imgFondo[indexPath.row]
            }
        }
        if segue.identifier == "restauranteb" {
            if let indexPath = tbvwTabla.indexPathForSelectedRow {
                let miViewController = segue.destinationViewController as! RestauranteBViewController
                miViewController.sTexto = misDatos[indexPath.row]
                miViewController.sImagen = imgFondo[indexPath.row]
            }
        }
        if segue.identifier == "restaurantec" {
            if let indexPath = tbvwTabla.indexPathForSelectedRow {
                let miViewController = segue.destinationViewController as! RestauranteCViewController
                miViewController.sTexto = misDatos[indexPath.row]
                miViewController.sImagen = imgFondo[indexPath.row]
            }
        }
        if segue.identifier == "restauranted" {
            if let indexPath = tbvwTabla.indexPathForSelectedRow {
                let miViewController = segue.destinationViewController as! RestauranteDViewController
                miViewController.sTexto = misDatos[indexPath.row]
                miViewController.sImagen = imgFondo[indexPath.row]
            }
        }
        if segue.identifier == "restaurantee" {
            if let indexPath = tbvwTabla.indexPathForSelectedRow {
                let miViewController = segue.destinationViewController as! RestauranteEViewController
                miViewController.sTexto = misDatos[indexPath.row]
                miViewController.sImagen = imgFondo[indexPath.row]
            }
        }
    }
    


}

