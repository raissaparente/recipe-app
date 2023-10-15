//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Raissa Parente on 11/10/23.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @StateObject private var favoritesManager = FavoritesManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoritesManager)
        }
    }
}
