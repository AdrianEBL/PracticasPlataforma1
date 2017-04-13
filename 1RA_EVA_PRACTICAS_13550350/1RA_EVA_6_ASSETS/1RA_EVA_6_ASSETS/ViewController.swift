//
//  ViewController.swift
//  1RA_EVA_6_ASSETS
//
//  Created by  on 08/02/17.
//
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var lblVal: UILabel!
    
    @IBAction func miValor(sender: UISlider) {
        lblVal.text = "\(sender.value)"
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

