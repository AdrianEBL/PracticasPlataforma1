//
//  ViewController.swift
//  3RA_EVA_7_LISTA_ARCHIVO
//
//  Created by  on 11/05/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var arregloDatos: [String: [String]]!
    var arregloClaves: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ruta = NSBundle.mainBundle().pathForResource("sortednames", ofType: "plist")
        print(ruta)
        let diccionarioDatos = NSDictionary(contentsOfFile: ruta!)
        arregloDatos = diccionarioDatos as! [String:[String]]
        arregloClaves = (diccionarioDatos!.allKeys as! [String]).sort()
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
        print(nombresSeccion.count)
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

