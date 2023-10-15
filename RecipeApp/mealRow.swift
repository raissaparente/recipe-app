//
//  mealRow.swift
//  RecipeApp
//
//  Created by Raissa Parente on 11/10/23.
//

import SwiftUI
import URLImage

struct mealRow: View {
    var meal: Meal
    var body: some View {
        HStack {
            URLImage(URL(string: meal.strMealThumb)!) { image in
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .ignoresSafeArea()
            }
            Text(meal.strMeal)
        }
    }
}
