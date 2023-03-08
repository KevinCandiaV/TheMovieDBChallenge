//
//  CoreDataRepository.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 8/03/23.
//

import Foundation
import CoreData
import UIKit

class CoredataRepository {
    let context = AppDelegate.shared.persistentContainer.viewContext
    
    func saveMovieCoreData(withMovie movie: Result,withImage image: UIImage) {
        let newMovie = MoviesCoreData(context: context)
        newMovie.title = movie.title
        newMovie.release_date = movie.release_date
        newMovie.overview = movie.overview
        newMovie.poster_path = movie.poster_path
        newMovie.imagePoster = image.pngData()
        
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchCoraDataMovies(completion: @escaping ([MoviesCoreData]) -> Void) {
        do {
            let movies = try context.fetch(MoviesCoreData.fetchRequest())
            completion(movies)
        } catch {
            print(error.localizedDescription)
        }
    }
}
