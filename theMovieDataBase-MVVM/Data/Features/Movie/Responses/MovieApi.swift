//
//  MovieApi.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation
import Alamofire

struct MovieApi {
    private let apiManager : APIManager
    
    init(apiManager : APIManager) {
        self.apiManager = apiManager
    }
    
    func getMovies(completion: @escaping(Result<TheMovieDBModel, ApiError>) -> Void) {
        let request = Request(method: .get, path: "movie/popular")
        apiManager.request(urlRequest: request) { (result: Swift.Result<TheMovieDBModel, ApiError>) in completion(result)
        }
    }
    
}

