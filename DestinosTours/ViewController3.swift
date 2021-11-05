//
//  ViewController3.swift
//  DestinosTours
//
//  Created by RodrigoParedes on 4/11/21.
//  Copyright © 2021 RodrigoParedes. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var vistaImg: UIImageView!
    @IBOutlet weak var placeTours: UILabel!
    var recRecib:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placeTours.text = recRecib!
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: recRecib!, ofType: "jpg", inDirectory: "IMAGES")!)
        let datos = try? Data(contentsOf: path)
        let image = UIImage(data: datos!)
        vistaImg.image = image
        // Do any additional setup after loading the view.
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
