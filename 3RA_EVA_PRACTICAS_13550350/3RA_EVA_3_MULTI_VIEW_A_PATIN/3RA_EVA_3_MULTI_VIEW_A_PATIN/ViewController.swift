//
//  ViewController.swift
//  3RA_EVA_3_MULTI_VIEW_A_PATIN
//
//  Created by  on 03/05/17.
//
//

import UIKit

class ViewController: UIViewController {

    @IBAction func miClick(sender: AnyObject) {
        let otroController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Otro") as UIViewController
        presentViewController(otroController, animated: true, completion: nil)
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

