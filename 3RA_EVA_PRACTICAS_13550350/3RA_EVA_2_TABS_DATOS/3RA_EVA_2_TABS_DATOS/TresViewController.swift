//
//  TresViewController.swift
//  3RA_EVA_2_TABS_DATOS
//
//  Created by  on 02/05/17.
//
//

import UIKit

class TresViewController: UIViewController {

    @IBOutlet weak var lblMostrar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tres - view Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Tres - view Will Appear")
        //let global = self.tabBarController as! TabBarController
        let misViewCtr = self.tabBarController?.viewControllers //Lista de ViewControllers
        let unoViewController = misViewCtr![0] as! UnoViewController // Accedemos al Buscado
        unoViewController.sCade = "Selecciono Tres"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
