//
//  ViewController.swift
//  1RA_EVA_7_MORE_ACTIONS
//
//  Created by  on 10/02/17.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFlNombre: UITextField!
    
    @IBOutlet weak var txtFlEdad: UITextField!
    
    @IBAction func onTapGestureReconizer(sender: AnyObject) {
        txtFlNombre.resignFirstResponder()
        txtFlEdad.resignFirstResponder()
    }
    
    @IBAction func textFieldDownEditing(sender: UITextField){
        sender.resignFirstResponder()
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

