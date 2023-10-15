//
//  desertLister.swift
//  RecipeApp
//
//  Created by Raissa Parente on 15/10/23.
//

import SwiftUI

struct DesertListerView: View {
    @ObservedObject var mealLoader = MealLoader()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(mealLoader.recipeBook, id: \.self) { meal in
                    if meal.strCategory == "Dessert" {
                        NavigationLink(destination: recipeView(meal: meal)) {
                            mealRow(meal: meal)
                        }
                    }
                }
            }
            .navigationTitle("Desserts")
        }
        .task {
            await mealLoader.fetchMeals()
        }
    }
}
