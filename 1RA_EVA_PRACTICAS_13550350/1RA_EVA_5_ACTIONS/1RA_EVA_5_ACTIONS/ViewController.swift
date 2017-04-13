//
//  ViewController.swift
//  1RA_EVA_5_ACTIONS
//
//  Created by  on 07/02/17.
//
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtFldMens: UITextField!
    
    @IBOutlet weak var lblMensa: UILabel!
    
    @IBAction func myTouch(sender: AnyObject) {
        var sMensa = txtFldMens.text
        lblMensa.text = sMensa
        
        let acMiDialogo = UIAlertController(title: "HOLA MUNDO",
            message: sMensa,
            preferredStyle: .Alert)
        
        let btnOK = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        
        acMiDialogo.addAction(btnOK)
        presentViewController(acMiDialogo, animated: true, completion: nil)
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

