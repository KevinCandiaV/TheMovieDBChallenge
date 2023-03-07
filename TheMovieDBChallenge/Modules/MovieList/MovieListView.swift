//
//  MovieListController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit

class MovieListViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: MovieListPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension MovieListViewController: MovieListViewProtocol {
    
    
}
