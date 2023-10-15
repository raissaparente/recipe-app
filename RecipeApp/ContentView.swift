//
//  ContentView.swift
//  RecipeApp
//
//  Created by Raissa Parente on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var favManager: FavoritesManager
    
    var body: some View {
        TabView {
            DesertListerView()
                .tabItem {
                    Label("Deserts", systemImage: "rectangle.grid.1x2.fill")
                }
            FavoriteRecipesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
