//
//  TabBar.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import Foundation
import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            GenresView()
                .tabItem{
                    Label("Genres", systemImage: "square.fill.text.grid.1x2")
                }
            AddImpressionsView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
            TopMoviesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
        }
    }
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(MoviesViewModel())
    }
}
