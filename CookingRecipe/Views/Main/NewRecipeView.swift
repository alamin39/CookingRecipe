//
//  NewRecipeView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add recipe manually", action: {
                showAddRecipe.toggle()
            })
            .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe, content: {
            AddRecipeView()
        })
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
