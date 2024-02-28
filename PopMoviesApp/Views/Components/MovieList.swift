//
//  MovieList.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI

struct MovieList: View {
    var movies:[Movie]
    var body: some View {
        VStack{
            HStack {
                Text("\(movies.count)\(movies.count > 1  ? " movies" : " movie")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
            
                Spacer()
            }
            
            LazyVGrid(columns:[GridItem(.adaptive(minimum: 160),spacing:15)],spacing:15){
                ForEach(movies){
                    movie in
                    NavigationLink(destination: MovieView(movie: movie)){
                        MovieCard(movie: movie)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            MovieList(movies: Movie.all)

        }
    }
}
