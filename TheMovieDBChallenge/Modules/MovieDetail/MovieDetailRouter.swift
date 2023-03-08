//
//  MovieDetailRouter.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 8/03/23.
//

import Foundation
import UIKit

protocol MovieDetailRouterProtocol {
    // PRESENTER -> ROUTER
    static func createMovieDetailModule() -> UIViewController
}

class MovieDetailRouter: MovieDetailRouterProtocol {
    static func createMovieDetailModule() -> UIViewController {
        let viewController = MovieDetailViewController()
        
        return viewController
    }
    
}
