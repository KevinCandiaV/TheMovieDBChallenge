//
//  Constants.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation

struct Constants {
    public static let api_Key = "fa407dc11b8d3580f2a8e0c642261e8f"
    public static let movieLoginURL = "https: //api.themoviedb.org/3/login"
    public static let fetchMoviesURL = "https://api.themoviedb.org/3/movie/upcoming?api_key=\(api_Key)&language=en-US&page=1"
}
