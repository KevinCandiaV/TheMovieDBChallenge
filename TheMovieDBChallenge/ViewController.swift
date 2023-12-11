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
        let nib = UINib(nibName: "NuevaTableViewCell", bundle: nil)
        ejemploTableview.register(nib, forCellReuseIdentifier: "celda")
        
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
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! NuevaTableViewCell
        celda.nombreLabel.text = "Adriana"
        celda.mensajeLabel.text = "Peppo tengo hambre"
//        var image: UIImage = UIImage(named: "pepa")
//        imageView.layer.borderWidth = 1.0
//        imageView.layer.masksToBounds = false
//        imageView.layer.borderColor = UIColor.whiteColor().CGColor
//        imageView.layer.cornerRadius = image.frame.size.width/2
//        imageView.clipsToBounds = true
        let image = UIImage(named: "pepa")
        celda.fotoImage.image = image
        celda.fotoImage.layer.borderWidth = 1.0
        celda.fotoImage.layer.masksToBounds = false
        celda.fotoImage.layer.cornerRadius = celda.fotoImage.frame.size.width/2
        celda.fotoImage.clipsToBounds = true
        
        return celda
    }
    
    
}

