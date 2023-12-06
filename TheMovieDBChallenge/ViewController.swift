//
//  ViewController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ejemploTableview: UITableView!
    
    //MARK: Espacio para crear lista
//    var numeroLista = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - LLamar metodos creados
    }
    
    // MARK: - Borrar metodo y ordenar
    func metodo1() {
        ejemploTableview.delegate = self
        ejemploTableview.dataSource = self
    }
    
    // MARK: - Crear metodo setupUI()
    // configurar vista de color a eleccion libre
    
    
    // MARK: - Crear metodo setupTableView()
    // agregar delegados
    
    // MARK: - Crear metodo regiterTable()
    // registar celda
    
}

extension ViewController: UITableViewDelegate {
    // MARK: - Agregar metodo didSelectRowAt
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // MARK: - Contar elementos de la lista
        // numeroLista.count
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        return celda
    }
    
    
}

