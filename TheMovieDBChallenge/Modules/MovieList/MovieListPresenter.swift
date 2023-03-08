//
//  MovieListPresenter.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation

protocol MovieListPresenterProtocol {
    // VIEW -> PRESENTER
    var view: MovieListViewProtocol? { get set }
    var interactor: MovieListInteractorInputProtocol? { get set }
    var router: MovieListRouterProtocol? { get set }
    
//    func viewDidLoad()
    
    func getMovieList()
    func presentDetailView(data: Result)
}

protocol MovieListInteractorOutputProtocol: AnyObject {
    // INTERACTOR -> PRESENTER
    func callBackDidGetMovies(data: MovieListResponse?)
}

class MovieListPresenter: MovieListPresenterProtocol {
    
    // MARK: - Properties
    weak var view: MovieListViewProtocol?
    var interactor: MovieListInteractorInputProtocol?
    var router: MovieListRouterProtocol?
    
//    func viewDidLoad() {
//
//    }
    
    func getMovieList() {
        interactor?.fetchMovies()
    }
    
    func presentDetailView(data: Result) {
        router?.presentDetailView(from: self.view!, data: data)
    }
}

extension MovieListPresenter: MovieListInteractorOutputProtocol {
    func callBackDidGetMovies(data: MovieListResponse?) {
        view?.reloadMoviesTable(withData: data)
    }
    
    
}
