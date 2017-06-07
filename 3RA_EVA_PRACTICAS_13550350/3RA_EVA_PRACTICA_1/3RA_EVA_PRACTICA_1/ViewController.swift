//
//  ViewController.swift
//  3RA_EVA_PRACTICA_1
//
//  Created by  on 19/05/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var arregloDatos: [String: [String]]!
    var arregloClaves: [String]!
    
    @IBOutlet weak var txtFldDatos: UITextField!
    @IBOutlet weak var tblVwLista: UITableView!
    
    @IBAction func btnCapturar(sender: UIButton) {
        //let ruta = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        //let sCade = txtFldDatos.text
        //arregloDatos.[sCade!]!
        //arreglo.writeToURL(ruta, atomically: true)
        //tblVwLista.reloadData()
    }
    
    func obtenRuta() -> NSURL {
        let tempDir = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        let tempoDirURL = NSURL(fileURLWithPath: tempDir!)
        return tempoDirURL
        //let tempDirFile = tempoDirURL.URLByAppendingPathComponent("names.plist")
        //return tempDirFile
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ruta = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        print(ruta)
        let ruta2 = obtenRuta()
        
        let diccionarioDatos = NSDictionary(contentsOfURL: ruta2)
        
        //let diccionarioDatos = NSDictionary(contentsOfFile: ruta!)
        arregloDatos = diccionarioDatos as! [String:[String]]
        arregloClaves = (diccionarioDatos!.allKeys as! [String]).sort()
        arregloDatos[arregloClaves[0]]!.append("aaaaaaaadf")
        //let ruta2 = obtenRuta()
        let diccionario2 = NSDictionary(dictionary: arregloDatos)
        diccionario2.writeToURL(ruta2, atomically: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return arregloClaves.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let clave = arregloClaves[section]
        let nombresSeccion = arregloDatos[clave]!
        return nombresSeccion.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda", forIndexPath: indexPath) as UITableViewCell
        let clave = arregloClaves[indexPath.section]
        let nombresSeccion = arregloDatos[clave]!
        celda.textLabel?.text = nombresSeccion[indexPath.row]
        return celda
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arregloClaves[section]
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return arregloClaves
    }


}

