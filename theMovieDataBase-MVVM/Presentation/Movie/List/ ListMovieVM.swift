//
//  ViewModel.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation
import Resolver

public class ListMovieVM  {
    @Injected var movieRepository : MovieRepository
    
    init() {}
    
    let movieListUiState = Box<[Result2]>([])
    
    let loadingUiState = Box<Bool>(false)
    
    func getMovieList() {
        loadingUiState.value = true
        movieRepository.getMovieList() { result in
            self.loadingUiState.value = false
            switch result {
            case.success(let movies):
                self.movieListUiState.value = movies
            case .failure(_):
                self.movieListUiState.value = []
            }
        }
        
    }
}


