//
//  MovieView.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//


import SwiftUI

struct MovieView: View {
    var movie: Movie
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: movie.image)){
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder:{
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth:.infinity, maxHeight: .infinity)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .frame(height: 300)
            
            VStack(spacing:30){
                Text(movie.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                if !movie.description.isEmpty {
                    Text(movie.description)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
            }
            .padding(.top, 20)
            .background(Color.white)
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
        .background(Color.white)
    }
}

struct ShowView: View {
    var body: some View {
        NavigationView {
            List(Movie.all) { movie in
                NavigationLink(destination: MovieView(movie: movie)){
                    VStack(alignment: .leading) {
                        Text(movie.name)
                            .font(.title)
                        Text(movie.genre)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationBarTitle("Movies")
        }
    }
}

struct MovieView_Previews: PreviewProvider {    static var previews: some View {
        MovieView(movie: Movie.all[0])
    }
}
