//
//  MovieDetailViewController.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 8/03/23.
//

import UIKit

protocol MovieDetailViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: MovieDetailPresenterProtocol? { get set }
}

class MovieDetailViewController: UIViewController {
    
    var presenter: MovieDetailPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension MovieDetailViewController: MovieDetailViewProtocol {
    
    
}
