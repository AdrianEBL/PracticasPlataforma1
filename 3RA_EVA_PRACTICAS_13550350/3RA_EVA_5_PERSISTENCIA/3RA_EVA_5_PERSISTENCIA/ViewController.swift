//
//  ViewController.swift
//  3RA_EVA_5_PERSISTENCIA
//
//  Created by  on 08/05/17.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldDatos: UITextField!
    @IBOutlet weak var lblMostrar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnGuardar(sender: UIButton) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.URLByAppendingPathComponent("misdatos.txt")
        do {
            try txtFldDatos.text?.writeToURL(archivo, atomically: true, encoding: NSUTF8StringEncoding)
        } catch {
            print("UOPS")
        }
    }
    
    @IBAction func btnLeer(sender: UIButton) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.URLByAppendingPathComponent("misdatos.txt")
        do {
            try lblMostrar.text = String(contentsOfFile: archivo.path!, encoding: NSUTF8StringEncoding)
        } catch {
            print("UOPS")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

