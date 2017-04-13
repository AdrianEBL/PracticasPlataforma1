//
//  ViewController.swift
//  1RA_EVA_PRACTICA_3
//
//  Created by  on 16/02/17.
//
//

import UIKit

class ViewController: UIViewController {
    
    var id = "barrios"
    var pass = "13550350"

    @IBOutlet weak var txtFlid: UITextField!
    
    @IBOutlet weak var txtFlpass: UITextField!
    
    @IBOutlet weak var lblError: UILabel!
    
    @IBAction func onTapGestureRecognizer(sender: UITapGestureRecognizer) {
        txtFlid.resignFirstResponder()
        txtFlpass.resignFirstResponder()
    }
    
    @IBAction func textFieldDownEditing(sender: UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction func buttomLog(sender: UIButton) {
        if(txtFlid.text != "" || txtFlpass.text != ""){
            if (txtFlid.text == id && txtFlpass.text == pass){
                let dialog = UIAlertController(title: "Inicio de Sesion", message: "Bienvenido "+txtFlid.text!+" deseas continuar?", preferredStyle: .Alert)
                
                let btnSi = UIAlertAction(title: "SI", style: .Default, handler: nil)
                let btnNo = UIAlertAction(title: "NO", style: .Cancel, handler: nil)
                dialog.addAction(btnSi)
                dialog.addAction(btnNo)
                presentViewController(dialog, animated: true, completion: nil)
                lblError.text = ""
            } else {
                lblError.text = "PROBLEMA DE AUTENTIFICACION \nHAY DATOS ERRONEOS";
            }
        } else {
            lblError.text = "NO SE HAN INGRESADO DATOS \nINTENTA DE NUEVO";
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

