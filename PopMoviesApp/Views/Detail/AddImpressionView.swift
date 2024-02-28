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
                        GenreView(genre: genresVM.genres.sorted{$0.datePublished>$1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label:{
                        Button{
                            savePreview()
                            navigateToGenre=true
                        } label:{
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("Previews")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
        
    }
}
extension AddRecipeView{
    private func saveRecipe(){
        let now=Date()

        let dateFormatter=DateFormatter()
        dateFormatter.dateFormat="yyyy-mm-dd"

        let datePublished=dateFormatter.string(from: now)
        print(datePublished)
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category:selectedCategory.rawValue, datePublished: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}
  
