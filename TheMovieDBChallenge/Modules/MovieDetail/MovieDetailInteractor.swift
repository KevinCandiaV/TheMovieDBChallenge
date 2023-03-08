//
//  MovieDetailInteractor.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 8/03/23.
//

import Foundation

protocol MovieDetailInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    var presenter: MovieDetailInteractorOutputProtocol? { get set }
    
    func callservice()
}

class MovieDetailInteractor: MovieDetailInteractorInputProtocol {
    
    // MARK: Properties
    weak var presenter: MovieDetailInteractorOutputProtocol?
    
    func callservice() {
        
    }
    
    
}
