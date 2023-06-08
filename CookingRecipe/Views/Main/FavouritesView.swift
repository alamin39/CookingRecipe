//
//  FavouritesView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView {
            Text("Favourites")
                .navigationTitle("Favourites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
