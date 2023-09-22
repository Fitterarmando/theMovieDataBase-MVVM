//
//  ModelMovieDataBase.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation

struct TheMovieDBModel : Codable {
    let page: Int
    let results: [Result2]
    let totalPages, totalResults: Int
}

struct Result2 : Codable {
    let adult: Bool
    let backdropPath: String
    let genreIds: [Int]
    let id: Int
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
}


