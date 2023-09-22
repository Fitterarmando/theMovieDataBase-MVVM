//
//  MovieRepositoryImpl.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation
import Alamofire

class MovieRepositoryImpl : MovieRepository {
    
    private let movieApi : MovieApi
    
    init(movieListApi : MovieApi) {
        self.movieApi = movieListApi
    }
    
    func getMovieList(completion: @escaping (Result<[Result2], ApiError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.movieApi.getMovies { result in
                switch result {
                case.success(let response):
                    completion(.success(response.results))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
}
