//
//  ViewController2.swift
//  DestinosTours
//
//  Created by RodrigoParedes on 4/11/21.
//  Copyright © 2021 RodrigoParedes. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var peru = ["Machu Picchu", "Lago Titicaca", "Cañon del Colca", "Ruinas de Chanchan"]
    var mexico = ["Chichén Itzá (Yucatán)", "Cancún", "Xochimilco (Ciudad de Mexico)", "Parque Xcaret (Quintana Roo)"]
    var brasil = ["Porto Seguro (Bahía)", "Río de Janeiro", "Brasilia (Distrito Federal)", "Porto de Galinhas (Pernambuco)"]
    var china = ["Pekín", "Xi'an", "La Gran Muralla", "Buda de Leshan"]

    @IBOutlet var Tabla2: UITableView!
    @IBOutlet weak var titulopais: UINavigationItem!
    var recibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulopais.title = recibido!
        Tabla2.dataSource = self
        Tabla2.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaTresSegue" {
            let idrecursoRecibido = sender as! Int
            let pantalla3:ViewController3 = segue.destination as! ViewController3
            let pais = recibido!
            switch pais {
            case "Perú":
                pantalla3.recRecib = peru[idrecursoRecibido]
            case "Mexico":
                pantalla3.recRecib = mexico[idrecursoRecibido]
            case "Brasil":
                pantalla3.recRecib = brasil[idrecursoRecibido]
            case "China":
                pantalla3.recRecib = china[idrecursoRecibido]
            default:
                pantalla3.recRecib = "No existe!!"
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let seleccion2 = indexPath.row
        self.performSegue(withIdentifier: "pantallaTresSegue", sender: seleccion2)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let pais = recibido!
        switch pais {
        case "Perú":
            return peru.count
        case "Mexico":
            return mexico.count
        case "Brasil":
            return brasil.count
        case "China":
            return china.count
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        let pais = recibido!
        switch pais {
        case "Perú":
            celda.textLabel?.text = peru[indexPath.row]
        case "Mexico":
            celda.textLabel?.text = mexico[indexPath.row]
        case "Brasil":
            celda.textLabel?.text = brasil[indexPath.row]
        case "China":
            celda.textLabel?.text = china[indexPath.row]
        default:
            celda.textLabel?.text = "No existe"
        }
        return celda
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
