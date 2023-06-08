//
//  RecipeViewModel.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/08.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
