//
//  MoviesViewModel.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import Foundation

class MoviesViewModel: ObservableObject{
    @Published private(set) var movies: [Movie] = []
    
    init(){
        movies=Movie.all
    }
    func addImpression(movie: Movie){
        movies.append(movie)
    }
}
