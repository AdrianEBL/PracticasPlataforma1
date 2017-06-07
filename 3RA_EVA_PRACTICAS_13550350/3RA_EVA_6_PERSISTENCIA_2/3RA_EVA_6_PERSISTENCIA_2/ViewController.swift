//
//  ViewController.swift
//  3RA_EVA_6_PERSISTENCIA_2
//
//  Created by  on 09/05/17.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var misSliders: [UISlider]!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var txtVwDatos: UITextView!
    
    @IBAction func btnGuardar(sender: UIButton) {
        //Obtener la ruta del directorio donde guardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la url
        let tempoDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempoDirURL.URLByAppendingPathComponent("misdatos.txt")
        let arreglo = (misSliders as NSArray).valueForKey("value") as! NSArray
        arreglo.writeToURL(archivo, atomically: true) //Guardamos
    }
    
    @IBAction func btnVisualizar(sender: UIButton) {
        //Obtenemos la ruta del directorio donde guardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la url
        let tempoDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempoDirURL.URLByAppendingPathComponent("misdatos.txt")
        //FileMAnager.default.fileExists
        if(NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            //NSArray.init
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Double]{
                var cade = " "
                for i in 0..<arreglo.count {
                    cade = cade + "\(arreglo[i])" + "\n"
                }
                txtVwDatos.text = cade
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tempDir = NSTemporaryDirectory()
        //Obtener la url
        let tempoDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempoDirURL.URLByAppendingPathComponent("misdatos.txt")
        //FileMAnager.default.fileExists
        if(NSFileManager.defaultManager().fileExistsAtPath(archivo.path!)){
            //NSArray.init
            if let arreglo = NSArray(contentsOfURL: archivo) as? [Double]{
                var cade = " "
                for i in 0..<arreglo.count {
                    cade = cade + "\(arreglo[i])" + "\n"
                }
                txtVwDatos.text = cade
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

