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
        let service = MovieRepository()
        service.fetchMovies { [weak self] listOfMovies in
            guard let self = self else { return }
            self.presenter?.callBackDidGetMovies(data: listOfMovies)
        }
    }
}
