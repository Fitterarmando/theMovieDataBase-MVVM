//
//  Int.swift
//  theMovieDataBase-MVVM
//
//  Created by Juan Armando Frías Ramírez on 20/09/23.
//

import Foundation

extension Int {
    
    func minutesToHours() -> Int {
        return (self/60)
    }
    
    func residual() -> Int {
        return (self%60)
    }
    
    func hourAndMinutes() -> String {
        return ( "\(self.minutesToHours())h \(self.residual())m" )
    }
    
}
    
