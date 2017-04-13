//
//  ViewController.swift
//  2DA_EVA_2_TABLAS
//
//  Created by  on 07/03/17.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let misDatos = ["1","2","3","4","5","6","7","8","9","10","asdf","gdsga","afahb","fdsgsfg","khjkj","agfg","ajsgfh","kgfuin","sjsjk","cbzn","ntsf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
    /*
    func tableView(tableView: UITableView, accessoryTypeForRowWithIndexPath indexPath: NSIndexPath) -> UITableViewCellAccessoryType {
        let controlador = UIAlertController(title: "Tus datos", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }*/
    
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Tus datos", message: misDatos[indexPath.row], preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        if celda == nil {
            celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        }
        celda?.textLabel?.text = misDatos[indexPath.row]
        let imFija = UIImage(named: "star-b")
        let imClick = UIImage(named: "star-p")
        celda?.imageView?.image = imFija
        celda?.imageView?.highlightedImage = imClick
        return celda!
    }

}
