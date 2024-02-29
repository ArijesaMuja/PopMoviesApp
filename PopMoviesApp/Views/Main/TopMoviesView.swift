//
//  FavoritesView.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI

struct TopMoviesView: View {
    @State private var isShowingMovie=false
    var titles=["The Godfather", "Casablanca", "Barbie", "Poor Things", "Past Lives", "Showing Up", "All Of Us Strangers", "A Thousand and One" ]
    var body: some View {
        NavigationView{
            List(0..<titles.count){index in
                HStack{
                    Image(self.titles[index]).resizable().frame(width: 60, height:60)
                    Text(self.titles[index])
                        .alert(isPresented: $isShowingMovie){
                        
                            Alert(title: Text("Here you can't see all movies only name of top movies! "))
                        }
                }.onAppear(){
                    isShowingMovie=true
                }
            }
            .navigationTitle("Top Movies")
        }
    }
}

struct TopMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviesView()
    }
}
