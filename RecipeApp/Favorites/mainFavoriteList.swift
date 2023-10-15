//
//  mainFavoriteList.swift
//  RecipeApp
//
//  Created by Raissa Parente on 15/10/23.
//

import SwiftUI

class FavoritesManager: ObservableObject {
    @Published var favRecipes: [Meal] = []
    
    func addRecipeToFavs(recipe: Meal) {
        favRecipes.append(recipe)
    }
    
    func removeRecipefromFavs(recipe: Meal) {
        let index = favRecipes.firstIndex(where: {$0.idMeal == recipe.idMeal})
        if let index {
            favRecipes.remove(at: index)
        }
    }
}
