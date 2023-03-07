//
//  MovieLoginPresenter.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation

class MovieLoginPresenter {
    
    //MARK: Properties
    weak var view: MovieLoginViewProtocol?
    var interactor: MovieLoginInteractorInputProtocol?
    var router: MovieLoginRouterProtocol?
}

extension MovieLoginPresenter: MovieLoginPresenterProtocol {
    
}

extension MovieLoginPresenter: MovieLoginInteractorOutputProtocol {
    func callBackDidGetPost() {
        
    }
    
    func didGetPostList() {
        
    }
}
