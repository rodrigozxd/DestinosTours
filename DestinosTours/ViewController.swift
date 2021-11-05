//
//  ViewController.swift
//  DestinosTours
//
//  Created by RodrigoParedes on 4/11/21.
//  Copyright © 2021 RodrigoParedes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var Tabla: UITableView!
    var paises = ["Perú","Mexico","Brasil","China"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tabla.dataSource = self
        Tabla.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue"{
            let idRecibido = sender as! Int
            let pantalla2:ViewController2 = segue.destination as! ViewController2
            pantalla2.recibido = paises[idRecibido]
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let seleccion = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: seleccion)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = paises[indexPath.row]
        return celda
    }

}

