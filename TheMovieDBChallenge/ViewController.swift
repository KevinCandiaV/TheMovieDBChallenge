//
//  ViewController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ejemploTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func metodo1() {
        ejemploTableview.delegate = self
        ejemploTableview.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        return celda
    }
    
    
}

