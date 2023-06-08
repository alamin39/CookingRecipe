//
//  ContentView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipeViewModel())
    }
}
