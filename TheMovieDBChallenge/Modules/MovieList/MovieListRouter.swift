//
//  MovieListRouter.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation
import UIKit

class MovieListRouter: MovieListRouterProtocol {
    static func createMovieListModule() -> UIViewController {
        let viewController = MovieListViewController()
        var presenter: MovieListPresenterProtocol & MovieListInteractorOutputProtocol = MovieListPresenter()
        var interactor: MovieListInteractorInputProtocol = MovieListInteractor()
        let router: MovieListRouterProtocol = MovieListRouter()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return viewController
        
    }
}
