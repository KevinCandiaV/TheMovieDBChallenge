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
    var datitosLista = ["1","2","3","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - LLamar metodos creados
        setupUI()
        setupTableView()
        registerTable()
    }
    
    // MARK: - Crear metodo setupUI()
    // configurar vista de color a eleccion libre
    func setupUI() {
        view.backgroundColor = .cyan
    }
    
    // MARK: - Crear metodo setupTableView()
    // agregar delegados
    func setupTableView() {
        ejemploTableview.delegate = self
        ejemploTableview.dataSource =  self
    }
    
    // MARK: - Crear metodo regiterTable()
    // registar celda
    func registerTable() {
        ejemploTableview.register(UITableViewCell.self, forCellReuseIdentifier: "celdita")
    }
    
}

extension ViewController: UITableViewDelegate {
    // MARK: - Agregar metodo didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // MARK: - Contar elementos de la lista
        // numeroLista.count
        return datitosLista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath)
        celda.textLabel?.text = datitosLista[indexPath.row]
        return celda
    }
    
    
}

