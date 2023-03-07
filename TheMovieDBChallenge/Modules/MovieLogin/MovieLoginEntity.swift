//
//  MovieLoginEntity.swift
//  TheMovieDBChallenge
//
//  Created by Kevin Candia Villagómez on 7/03/23.
//

import Foundation

struct MovieLoginResponse: Decodable {
    let token: String?
    let user: [MovieUser]?
    let verified: Bool?
}

struct MovieUser: Decodable {
    let active: Bool?
    let name: String?
    let email: String?
    let firstName: String?
    let lastName: String?
    let phoneNumber: String?
}
