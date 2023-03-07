//
//  MovieLoginProtocols.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation
import UIKit

protocol MovieLoginViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: MovieLoginPresenterProtocol? { get set }
}

protocol MovieLoginRouterProtocol {
    // PRESENTER -> ROUTER
    static func createModule() -> UIViewController
}

protocol MovieLoginPresenterProtocol {
    // VIEW -> PRESENTER
    var view: MovieLoginViewProtocol? { get set }
    var interactor: MovieLoginInteractorInputProtocol? { get set }
    var router: MovieLoginRouterProtocol? { get set }
}

protocol MovieLoginInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
    var presenter: MovieLoginInteractorOutputProtocol? { get set }
    
}

protocol MovieLoginInteractorOutputProtocol: AnyObject {
    // INTERACTOR -> PRESENTER
    func callBackDidGetPost()
    func didGetPostList()
}


