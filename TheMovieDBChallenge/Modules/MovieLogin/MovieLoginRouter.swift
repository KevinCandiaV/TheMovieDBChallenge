//
//  MovieLoginRouter.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation
import UIKit

protocol MovieLoginRouterProtocol {
    // PRESENTER -> ROUTER
    static func createModule() -> UIViewController
    func presentListView(from viewProtocol: MovieLoginViewProtocol)
}

class MovieLoginRouter: MovieLoginRouterProtocol {
    static func createModule() -> UIViewController {
        let viewController = MovieLoginViewController()
        var presenter: MovieLoginPresenterProtocol & MovieLoginInteractorOutputProtocol = MovieLoginPresenter()
        var interactor: MovieLoginInteractorInputProtocol = MovieLoginInteractor()
        let router: MovieLoginRouterProtocol = MovieLoginRouter()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return viewController
    }
    
    func presentListView(from viewProtocol: MovieLoginViewProtocol) {
        let routerModule: MovieListViewController = MovieListRouter.createMovieListModule() as! MovieListViewController
        guard let controller = viewProtocol as? UIViewController else {
            return
        }
        AppDelegate.shared.changeScreenforLogin()
//        controller.navigationController?.pushViewController(routerModule, animated: true)
    }
}
