//
//  meals.swift
//  RecipeApp
//
//  Created by Raissa Parente on 11/10/23.
//

import Foundation

struct RecipeBook: Decodable {
    let meals: [Meal]
}

struct Meal: Decodable, Hashable {
    let idMeal: String
    let strMeal: String
    let strCategory: String
    let strInstructions: String
    let strMealThumb: String
    let strArea: String
    let strIngredient1: String
    let strIngredient2: String
    let strIngredient3: String
    let strIngredient4: String
    let strIngredient5: String
    let strIngredient6: String
    let strIngredient7: String
}
