//
//  CategoryView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/07.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipeViewModel
    var category: Category
    
    var recipies: [Recipe] {
        recipesVM.recipes.filter { $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipies)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.appetizer)
            .environmentObject(RecipeViewModel())
    }
}
