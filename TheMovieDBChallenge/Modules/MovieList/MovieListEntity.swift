//
//  MovieListEntity.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation

struct MovieListResponse: Decodable {
    let dates: Dates
    let page: Int
    let results: [Result]
    let totalPages: Int
    let totalResults: Int
}

// MARK: - Dates
struct Dates: Decodable{
    let maximum: String
    let minimum: String
}

// MARK: - Result
struct Result: Decodable {
    let adult: Bool
    let backdropPath: String
    let genreIDS: [Int]
    let id: Int
    let originalLanguage: OriginalLanguage
    let originalTitle: String
    let overview: String
    let popularity: Double
    let posterPath: String
    let releaseDate: String
    let title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
}

enum OriginalLanguage: Decodable {
    case en
    case es
    case ja
}
