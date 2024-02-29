import SwiftUI

struct HomeView: View { @EnvironmentObject var moviesVM MoviesViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                MovieList(movies: moviesVM.movies)
            }
            .navigationTitle("Movies")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MoviesViewModel())
        
    }
}
