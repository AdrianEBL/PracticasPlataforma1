//
//  ViewController.swift
//  3RA_EVA_8_AGREGAR_DATOS
//
//  Created by  on 16/05/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var arreglo: NSMutableArray = []

    @IBOutlet weak var txtFldDatos: UITextField!
    @IBOutlet weak var tblVwLista: UITableView!
    
    @IBAction func capturarDatos(sender: UIButton) {
        let ruta = obtenRuta()
        let sCade = txtFldDatos.text
        arreglo.addObject(sCade!)
        arreglo.writeToURL(ruta, atomically: true)
        tblVwLista.reloadData()
    }
    
    func obtenRuta() -> NSURL {
        let tempDir = NSTemporaryDirectory()
        let tempoDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempoDirURL.URLByAppendingPathComponent("milista.plist")
        return tempDirFile
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ruta = obtenRuta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda")
        celda?.textLabel?.text = arreglo[indexPath.row] as? String
        return celda!
    }
    
    
    // Override to support editing the table view.
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            arreglo.removeObjectAtIndex(indexPath.row);
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            let ruta = obtenRuta()
            arreglo.writeToURL(ruta, atomically: true)
        }
    }


}

