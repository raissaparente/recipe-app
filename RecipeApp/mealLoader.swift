//
//  mealLoader.swift
//  RecipeApp
//
//  Created by Raissa Parente on 11/10/23.
//

import Foundation

class MealLoader: ObservableObject {
    @Published var recipeBook: [Meal] = []
    
    func fetchMeals() async {
        let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?f=s")!
          
        do {
            let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
            
            let meals = try JSONDecoder().decode(RecipeBook.self, from: data)
            
            self.recipeBook = meals.meals
            
        } catch {
            print(error)
        }
    }
}


