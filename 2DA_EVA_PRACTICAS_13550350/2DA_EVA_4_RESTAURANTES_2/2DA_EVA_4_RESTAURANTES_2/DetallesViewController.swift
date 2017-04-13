//
//  DetallesViewController.swift
//  2DA_EVA_4_RESTAURANTES_2
//
//  Created by  on 24/03/17.
//
//

import UIKit

class DetallesViewController: UIViewController {
    
    @IBOutlet weak var imgDeta: UIImageView!
    @IBOutlet weak var lblRestDeta: UILabel!
    @IBOutlet weak var lblUbicaDeta: UILabel!
    @IBOutlet weak var lblDescDeta: UILabel!
    
    var sNomImg = ""
    var sNomRest = ""
    var sUbica = ""
    var sDesc = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        imgDeta.image = UIImage(named: sNomImg)
        lblRestDeta.text = sNomRest
        lblUbicaDeta.text = sUbica
        lblDescDeta.text = sDesc
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
