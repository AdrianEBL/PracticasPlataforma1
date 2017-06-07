//
//  DosViewController.swift
//  3RA_EVA_2_TABS_DATOS
//
//  Created by  on 02/05/17.
//
//

import UIKit

class DosViewController: UIViewController {

    @IBOutlet weak var lblMostrar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Dos - view Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("Dos - view Did Load")
        //let global = self.tabBarController as! TabBarController
        let misViewCtr = self.tabBarController?.viewControllers //Lista de ViewControllers
        let unoViewController = misViewCtr![0] as! UnoViewController // Accedemos al Buscado
        unoViewController.sCade = "Selecciono Dos"
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
