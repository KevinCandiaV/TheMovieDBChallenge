//
//  ViewController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit
struct Persona {
    let userId: Int?
    let id: Int?
    let title: String?
    let body: String?
}

class ViewController: UIViewController {
    
    @IBOutlet weak var ejemploTableview: UITableView!
    
    var listaPersona1 = Persona(userId: 1, id: 1, title: "sunt aut facere repellat", body: "Body 1")
    var listaPersona2 = Persona(userId: 2, id: 2, title: "qui est esse", body: "Body 2")
    
    var arrayPersona = [Persona]()
            
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        registerTable()
        setupUI()
    }
    
    func setupUI() {
        arrayPersona.append(listaPersona1)
        arrayPersona.append(listaPersona2)
    }
    
    // MARK: - Configurar tabla con delegados
    func setupTable() {
        ejemploTableview.delegate = self
        ejemploTableview.dataSource = self
    }
    
    func registerTable() {
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        ejemploTableview.register(nib, forCellReuseIdentifier: "celda")
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPersona.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! DemoTableViewCell
//        celda.backgorundView.backgroundColor = .gray
        celda.nombreLable.text = arrayPersona[indexPath.row].body
        celda.descLabel.text = arrayPersona[indexPath.row].title
        celda.celdaImageview.image = UIImage(named: "profileImage")
        return celda
    }
    
}

