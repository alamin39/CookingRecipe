//
//  TabBar.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            FavouritesView()
                .tabItem {
                    Label("Favourites", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipeViewModel())
    }
}
