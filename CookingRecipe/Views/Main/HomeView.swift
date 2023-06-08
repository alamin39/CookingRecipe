//
//  HomeView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipeViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModel())
    }
}
