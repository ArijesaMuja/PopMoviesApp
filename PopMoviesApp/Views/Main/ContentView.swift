//
//  ContentView.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI
import UIKit

struct ContentView: View {var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MoviesViewModel())
    }
}
