//
//  MovieRepository.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation

protocol MovieRepository {
    func getMovieList(completion: @escaping (Result<[Result2], ApiError>) -> Void)
}
