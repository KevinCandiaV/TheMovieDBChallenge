//
//  ViewController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ejemploTableview: UITableView!
    
    // Datos de ejemlo para la lista
    let datosLista = [
        ("Elemento 1", "Subtítulo 1", "2023-01-01"),
        ("Elemento 2", "Subtítulo 2", "2023-02-15"),
        ("Elemento 3", "Subtítulo 3", "2023-03-30")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTable()
        registerTable()
    }
    
    func setupUI() {
        view.backgroundColor = .gray
    }
    
    func setupTable() {
        ejemploTableview.delegate = self
        ejemploTableview.dataSource = self
    }
    
    func registerTable() {
        ejemploTableview.register(UITableViewCell.self, forCellReuseIdentifier: "celdaID")
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datosLista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == datosLista.count - 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaID", for: indexPath)
            
            let (titulo, subtitulo, fecha) = datosLista[indexPath.row]
            cell.textLabel?.text = "\(titulo) - \(subtitulo) - Fecha: \(fecha)"
            cell.backgroundColor = .blue
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaID", for: indexPath)
            if indexPath.row == 0 {
                cell.backgroundColor = .systemPink
            } else {
                cell.backgroundColor = .yellow
            }
            let (titulo, subtitulo, fecha) = datosLista[indexPath.row]
            cell.textLabel?.text = "\(titulo) - \(subtitulo) - Fecha: \(fecha)"
            return cell
        }
    }
    
}

