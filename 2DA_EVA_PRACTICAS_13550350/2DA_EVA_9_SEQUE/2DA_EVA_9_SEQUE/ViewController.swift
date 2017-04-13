//
//  ViewController.swift
//  2DA_EVA_9_SEQUE
//
//  Created by  on 23/03/17.
//
//

import UIKit

class ViewController: UIViewController {

    @IBAction func lanzarSeque(sender: UIButton) {
        let alertController = UIAlertController(title: "PANTALLAS", message: "Mostrar pantallas", preferredStyle: .Alert)
        let actionVerde = UIAlertAction(title: "VERDE",
                                        style: .Default,
                                        handler: {action in self.performSegueWithIdentifier("verde", sender: self)})
        let actionRojo = UIAlertAction(title: "ROJO",
                                        style: .Default,
                                        handler: {action in self.performSegueWithIdentifier("rojo", sender: self)})
        alertController.addAction(actionVerde)
        alertController.addAction(actionRojo)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "verde" {
            let miViewController = segue.destinationViewController as! VerdeViewController
            miViewController.sTexto = "HOLA MUNDO!!!"
        }
        if segue.identifier == "rojo" {
            let miViewController = segue.destinationViewController as! RojoViewController
            miViewController.sTexto = "Pantalla en rojo"
        }
    }


}

