//
//  GenresView.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI

struct GenresView: View {
    
    var body: some View {
        NavigationView{
            List{
                ForEach(Genre.allCases){genre  in NavigationLink{ GenreView(genre: genre)
                } label: {
                    Text(genre.rawValue+"s")
                }
               }
            }
                .navigationTitle("Movies Genre")
                
        }
        .navigationViewStyle(.stack)
    }
}

struct GenresView_Previews: PreviewProvider {
    static var previews: some View {
        GenresView()
    }
}
