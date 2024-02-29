//
//  AddImpressionsView.swift
//  PopMoviesApp
//
//  Created by arijesa on 28.2.24.
//

import SwiftUI

struct AddImpressionView: View {
    @EnvironmentObject var moviesVM: MoviesViewModel
    
    @State private var name: String=""
    @State private var selectedGenre: Genre = Genre.comedy
    @State private var description: String=""
    @State private var preview: String=""
    @State private var navigateToGenre=false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Name")){
                    TextField("Movie Name", text: $name )
                }
                Section(header: Text("Genre")){
                    Picker("Genre", selection: $selectedGenre){
                        ForEach(Genre.allCases){genre in
                            Text(genre.rawValue)
                                .tag(genre)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")){
                    TextEditor(text: $description)
                    
                }
                Section(header: Text("Preview")){
                    TextEditor(text: $preview)
                } 
            }
            
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigateToGenre) {
                        MovieView(movie: moviesVM.movies.sorted{$0.datePublished>$1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label:{
                        Button{
                            saveImpression()
                            navigateToGenre=true
                        } label:{
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("Impressions")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct AddImpressionView_Previews: PreviewProvider {
    static var previews: some View {
        AddImpressionView()
            .environmentObject(MoviesViewModel())
        
    }
}
extension AddImpressionView{
    private func saveImpression(){
        let now=Date()

        let dateFormatter=DateFormatter()
        dateFormatter.dateFormat="yyyy-mm-dd"

        let datePublished=dateFormatter.string(from: now)
        print(datePublished)
        let movie = Movie(name: name, image: "", description: description, genre: selectedGenre.rawValue, datePublished: "")
        moviesVM.addImpression(movie: movie)
    }
}
  
