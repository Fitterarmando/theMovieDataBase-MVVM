//
//  MoviesModelPresentation.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation

struct MovieModelPresentation {
    let title : String
    let image : String
    let popularity : Double
    let date : String
}

extension Result2 {
    func toPresentantion() -> MovieModelPresentation {
        return MovieModelPresentation(
            title: self.title,
            image: self.posterPath,
            popularity: self.voteAverage,
            date: self.releaseDate.format(inputFormat: "yyyy-MM-dd", outputFormat: "d MMM yyyy") ?? self.releaseDate
        )
    }
    
}

extension String {
    func imageUrl() -> String {
        return "https://image.tmdb.org/t/p/w300_and_h450_bestv2/\(self)"
    }
}


