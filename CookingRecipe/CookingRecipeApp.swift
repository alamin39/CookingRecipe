//
//  CookingRecipeApp.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

@main
struct CookingRecipeApp: App {
    @StateObject var recipeViewModel = RecipeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
