//
//  ViewController2.swift
//  TableView_Valladolid
//
//  Created by Mac05 on 21/09/24.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var vistaWeb: UIWebView!
    var recursoRecibido: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarRecurso()
    }

    func mostrarRecurso() {
        guard let recurso = recursoRecibido else {
            print("No se ha recibido un recurso válido.")
            return
        }

        if let direccionRecurso = Bundle.main.path(forResource: recurso, ofType: "pdf", inDirectory: "RECURSOS") {
            let url = URL(fileURLWithPath: direccionRecurso)
            let request = URLRequest(url: url)
            vistaWeb.loadRequest(request)
        } else {
            print("El recurso \(recurso) no se encontró.")
        }
    }

}
