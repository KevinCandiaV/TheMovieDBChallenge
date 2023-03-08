//
//  MovieListInteractor.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation

protocol MovieListInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    var presenter: MovieListInteractorOutputProtocol? { get set }
    func fetchMovies()
    
}

class MovieListInteractor: MovieListInteractorInputProtocol {
    
    // MARK: - Properties
    weak var presenter: MovieListInteractorOutputProtocol?
    
    func fetchMovies() {
        
    }
}
