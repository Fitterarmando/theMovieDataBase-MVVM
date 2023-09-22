//
//  AppModule.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 21/09/23.
//
import Foundation
import Alamofire
import Resolver


extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        register { ListMovieVM() }
        
        register { RequestInterceptor() }.implements(Alamofire.RequestInterceptor.self)
        register { Session(interceptor: optional()) }
        register { APIManager(sessionManager: resolve()) }
        
        register { MovieApi(apiManager: resolve()) }
        
        register { MovieRepositoryImpl(movieListApi: resolve()) }.implements(MovieRepository.self)
        
    }
    
    


}
