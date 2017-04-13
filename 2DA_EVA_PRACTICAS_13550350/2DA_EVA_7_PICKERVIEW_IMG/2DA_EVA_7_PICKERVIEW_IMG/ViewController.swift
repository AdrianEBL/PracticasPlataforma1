//
//  ViewController.swift
//  2DA_EVA_7_PICKERVIEW_IMG
//
//  Created by  on 16/03/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let asDatos = ["Facebook", "Google", "Instagram", "Pinterest", "Twitter"]
    var aImagenes: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aImagenes = [UIImage(named: "facebook")!, UIImage(named: "google")!, UIImage(named: "instagram")!, UIImage(named: "pinterest")!, UIImage(named: "twitter-xl")!]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return asDatos[row]
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = aImagenes[row]
        let imgView = UIImageView(image: imagen)
        return imgView
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return asDatos.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa:String
        sMensa = asDatos[row]
        
        let acMostrar = UIAlertController(title: "Picker View", message: sMensa, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

}

