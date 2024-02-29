//
//  PopMoviesAppApp.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI

@main
struct PopMoviesAppApp: App {
    @StateObject var moviesViewModel = MoviesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(moviesViewModel)
        }
    }
}
