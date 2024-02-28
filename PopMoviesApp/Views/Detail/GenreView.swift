//
//  GenreView.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI

struct GenreView: View {
    
    @EnvironmentObject var moviesVM: MoviesViewModel
    var genre: Genre
    var movies: [Movie]{
        return moviesVM.movies.filter{$0.genre==genre.rawValue}
    }
    var body: some View {
        ScrollView{
            MovieList(movies: movies)
        }
        .navigationTitle(genre.rawValue+"s")
    }
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
    GenreView(genre: Genre.comedy)
            .environmentObject(MoviesViewModel())
    }
}
