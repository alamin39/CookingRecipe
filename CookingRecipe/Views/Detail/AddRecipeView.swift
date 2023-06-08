//
//  AddRecipeView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/07.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var recipesVM: RecipeViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                nameSection
                categorySection
                descriptionSection
                ingredientsSection
                directionsSection
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        saveRecipe()
                        navigateToRecipe.toggle()
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    .disabled(name.isEmpty)
                    .navigationDestination(isPresented: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted { $0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    }
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipeViewModel())
    }
}


extension AddRecipeView {
    
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        recipesVM.addRecipe(recipe: recipe)
    }
    
    private var nameSection: some View {
        Section {
            TextField("Recipe name", text: $name)
        } header: {
            Text("Name")
        }
    }
    
    private var categorySection: some View {
        Section {
            Picker("Category", selection: $selectedCategory) {
                ForEach(Category.allCases) { category in
                    Text(category.rawValue)
                        .tag(category)
                }
            }
            .pickerStyle(.menu)
        } header: {
            Text("Category")
        }
    }
    
    private var descriptionSection: some View {
        Section {
            TextEditor(text: $description)
        } header: {
            Text("Description")
        }
    }
    
    private var ingredientsSection: some View {
        Section {
            TextEditor(text: $ingredients)
        } header: {
            Text("Ingredients")
        }
    }
    
    private var directionsSection: some View {
        Section {
            TextEditor(text: $directions)
        } header: {
            Text("Directions")
        }
    }
}
