//
//  ViewController2.swift
//  TableView_Valladolid
//
//  Created by Mac05 on 21/09/24.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var labelTitulo: UILabel!
    var recursoRecibido: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Asignar el valor del recurso recibido al texto del label
        labelTitulo.text = recursoRecibido ?? "Sin recurso"
    }

}
