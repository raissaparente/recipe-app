//
//  favoriteRecipesView.swift
//  RecipeApp
//
//  Created by Raissa Parente on 12/10/23.
//

import SwiftUI

struct FavoriteRecipesView: View {
    @EnvironmentObject var favManager: FavoritesManager
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(favManager.favRecipes, id: \.self) { recipe in
                    if recipe.strCategory == "Dessert" {
                        NavigationLink(destination: recipeView(meal: recipe)) {
                            mealRow(meal: recipe)
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}
