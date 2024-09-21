//
//  ViewController.swift
//  TableView_Valladolid
//
//  Created by Mac05 on 21/09/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var Tabla: UITableView!
    var contenidoCeldas = ["recurso1", "recurso2", "recurso3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Celda")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hizo clic en la fila: \(indexPath.row)")
    }

    
}

