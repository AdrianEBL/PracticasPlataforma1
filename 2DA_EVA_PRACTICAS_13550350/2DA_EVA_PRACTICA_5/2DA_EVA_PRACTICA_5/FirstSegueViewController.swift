//
//  FirstSegueViewController.swift
//  2DA_EVA_PRACTICA_5
//
//  Created by  on 30/03/17.
//
//

import UIKit

class FirstSegueViewController: UIViewController {
    
    @IBOutlet var imgImagen: UIImageView!
    @IBOutlet weak var lblDatos: UILabel!
    
    @IBAction func btnMens(sender: UIButton) {
        let alertController = UIAlertController(title: "PANTALLA", message: "Has entrado con exito a esta pantalla", preferredStyle: .Alert)
        let actionVerde = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(actionVerde)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    var sNomImg = ""
    var sTexto = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        imgImagen.image = UIImage(named: sNomImg)
        lblDatos.text = sTexto
        // Do any additional setup after loading the view.
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
