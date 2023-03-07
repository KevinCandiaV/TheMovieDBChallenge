//
//  MovieLoginView.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import UIKit

class MovieLoginViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: MovieLoginPresenterProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension MovieLoginViewController: MovieLoginViewProtocol {
    
}
