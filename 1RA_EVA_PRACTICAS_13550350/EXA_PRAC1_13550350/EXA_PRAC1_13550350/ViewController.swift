//
//  ViewController.swift
//  EXA_PRAC1_13550350
//
//  Created by  on 28/02/17.
//
//

import UIKit

class ViewController: UIViewController {
    
    var cred:Float = 0.0
    var cal:Float = 0.0

    @IBOutlet weak var lblF: UILabel!
    
    @IBOutlet weak var lblS: UILabel!
    
    @IBOutlet weak var lblMens: UILabel!
    
    @IBAction func valAcred(sender: UISlider) {
        cred = (sender.value*100)
        lblF.text = "Puntos para acreditar: \(sender.value*100)"
        if(cred >= cal){
            lblMens.text = "Acreditado!!"
        } else {
            lblMens.text = ""
        }
    }
    
    @IBAction func valCal(sender: UISlider) {
        cal = (sender.value*100)
        lblS.text = "Calificacion: \(sender.value*100)"
        if(cred >= cal){
            lblMens.text = "Acreditado!!"
        } else {
            lblMens.text = ""
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

