//
//  SettingsView.swift
//  CookingRecipe
//
//  Created by Al-Amin on 2023/06/06.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .font(.title)
                .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
