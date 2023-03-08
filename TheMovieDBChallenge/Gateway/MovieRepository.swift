//
//  MovieRepository.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 8/03/23.
//

import Foundation

class MovieRepository {
    
    // MARK : - Get Movies
    func fetchMovies(completion: @escaping (MovieListResponse?) -> Void) {
        let url = Constants.fetchMoviesURL
        guard let url = URL(string: url) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    
                    let postResponse = try decoder.decode(MovieListResponse.self, from: data)
                    completion(postResponse)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
