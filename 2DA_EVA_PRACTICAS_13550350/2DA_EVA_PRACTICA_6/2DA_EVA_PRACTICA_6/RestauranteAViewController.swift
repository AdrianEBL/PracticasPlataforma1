//
//  RestauranteAViewController.swift
//  2DA_EVA_PRACTICA_6
//
//  Created by  on 03/04/17.
//
//

import UIKit

class RestauranteAViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pkrvwPlatillo: UIPickerView!
    @IBOutlet weak var lblDatos: UILabel!
    @IBOutlet weak var imgvwOne: UIImageView!
    @IBOutlet weak var imgvwTwo: UIImageView!
    
    var sTexto = ""
    var sImagen = ""
    let asData = ["Peperoni", "Jamon", "Salami", "Salchicha", "Carne"]
    let secData = ["Champiñones", "Chile", "Piña", "Cebolla", "Brokoli"]
    let imgPkF1 = ["barrafina", "bourkestreetbakery", "cafedeadend", "cafeloisl", "cafelore"]
    let imgPkF2 = ["confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats"]

    @IBAction func btnPedir(sender: UIButton) {
        let dataComp1 = asData[pkrvwPlatillo.selectedRowInComponent(0)]
        let dataComp2 = secData[pkrvwPlatillo.selectedRowInComponent(1)]
        
        let acMostrar = UIAlertController(title: "Su platillo tendrá:", message: dataComp1+" y "+dataComp2, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        let compartirAct = UIAlertAction(title: "Compartir",style: .Default, handler: compartir)
        acMostrar.addAction(acBoton)
        acMostrar.addAction(compartirAct)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDatos.text = sTexto
        imgvwOne.image = UIImage(named: imgPkF1[0])
        imgvwTwo.image = UIImage(named: imgPkF2[2])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return asData[row] //Fila que se debe refrescar (mostrar el texto)
        } else {
            return secData[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //Numero de componentes que contendran a los arreglos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            imgvwOne.image = UIImage(named: imgPkF1[row])
        } else {
            imgvwTwo.image = UIImage(named: imgPkF2[row])
        }
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return asData.count
        } else {
            return secData.count
        }
    }
    
    func compartir(alert: UIAlertAction) ->Void{
        
        let miTxt = "Vine a comer en " + sTexto
        let miImg = UIImage(named: sImagen)
        let mensa = "Ingredientes del platillo: " + asData[pkrvwPlatillo.selectedRowInComponent(0)] + " y " + secData[pkrvwPlatillo.selectedRowInComponent(1)]
        let actController = UIActivityViewController(activityItems: [miTxt, mensa, miImg!], applicationActivities: nil)
        presentViewController(actController, animated:true,completion:nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
