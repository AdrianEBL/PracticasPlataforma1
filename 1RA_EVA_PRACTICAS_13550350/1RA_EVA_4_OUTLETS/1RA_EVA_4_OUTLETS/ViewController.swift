//
//  ViewController.swift
//  1RA_EVA_4_OUTLETS
//
//  Created by  on 09/02/17.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblOutlet.text="HOLA"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

