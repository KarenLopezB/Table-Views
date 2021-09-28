//
//  ViewController.swift
//  TableViews
//
//  Created by Alumno on 9/27/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellAlumno") as! CeldaAlumnoController
        celda.lblNombre.text = nombres[indexPath.row]
        celda.lblMatricula.text = matriculas[indexPath.row]
        celda.lblPromedio.text = promedios[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
    
    let nombres = ["Karen", "Daniela", "Ana", "Jose"]
    let matriculas = ["189368","107734", "143274", "112636"]
    let promedios = ["8", "9", "10", "10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

