//
//  ViewController.swift
//  2DA_EVA_PRACTICA_4
//
//  Created by  on 30/03/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgCarros: UIImageView!
    
    let asData = ["Camaro", "Mustang", "Corvette", "Charger", "Jaguar"]
    let secData = ["Rojo", "Azul", "Amarillo", "Plata", "Negro"]
    let thrData = ["2013", "2014", "2015", "2016", "2017", "2010", "2011", "2012"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let datarow = ""
        if component == 0 {
            return asData[row] //Fila que se debe refrescar (mostrar el texto)
        }
        else if component == 1 {
            return secData[row] //Fila que se debe refrescar (mostrar el texto)
        }
        else if component == 2 {
            return thrData[row]
        }
        else {
            return datarow
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3 //Numero de componentes que contendran a los arreglos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let dataComp1 = asData[pickerView.selectedRowInComponent(0)]
        let dataComp2 = secData[pickerView.selectedRowInComponent(1)]
        let dataComp3 = thrData[pickerView.selectedRowInComponent(2)]
        
        let img = UIImage(named: dataComp1+dataComp2+dataComp3)
        imgCarros.image = img
        
        if imgCarros.image == nil {
            let acMostrar = UIAlertController(title: "Visualización no disponible", message: dataComp1+" "+dataComp2+" "+dataComp3, preferredStyle: .Alert)
            let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            acMostrar.addAction(acBoton)
            presentViewController(acMostrar, animated: true, completion: nil)
        }
        /*
        let acMostrar = UIAlertController(title: "PICKER VIEW", message: dataComp1+" "+dataComp2+" "+dataComp3, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        presentViewController(acMostrar, animated: true, completion: nil)
        */
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let str = 0
        if component == 0 {
            return asData.count //Cantidad de datos en el componente actual
        }
        else if component == 1 {
            return secData.count //Cantidad de datos en el componente actual
        }
        else if component == 2 {
            return thrData.count
        }
        else {
            return str
        }
    }


}

