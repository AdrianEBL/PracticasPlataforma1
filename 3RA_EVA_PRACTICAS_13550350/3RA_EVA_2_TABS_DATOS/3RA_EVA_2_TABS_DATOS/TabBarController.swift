//
//  TabBarController.swift
//  3RA_EVA_2_TABS_DATOS
//
//  Created by  on 02/05/17.
//
//

import UIKit

class TabBarController: UITabBarController {
    
    //var sCade = "INICIO"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        var sTitulo = ""
        if item == tabBar.items![0]{
            sTitulo = "UNO"
        } else if item == tabBar.items![1] {
            sTitulo = "DOS"
        } else {
            sTitulo = "TRES"
        }
        
        let alerta = UIAlertController(title: sTitulo, message: "HOLA MUNDO", preferredStyle: .Alert)
        let accion = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alerta.addAction(accion)
        presentViewController(alerta, animated: true, completion: nil)
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
