//
//  recipeView.swift
//  RecipeApp
//
//  Created by Raissa Parente on 11/10/23.
//

import SwiftUI
import URLImage

struct recipeView: View {
    var meal: Meal
    @EnvironmentObject var favManager: FavoritesManager
    @State var isRecipeFavorited: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                URLImage(URL(string: meal.strMealThumb)!) { image in
                    image
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                }
                
                Text(meal.strMeal)
                    .font(.system(size: 35))
                    .foregroundColor(.pink)
                    .bold()
            }
            
            List {
                Section {
                    Text("1. \(meal.strIngredient1.capitalized)")
                    Text("2. \(meal.strIngredient2.capitalized)")
                    Text("3. \(meal.strIngredient3.capitalized)")
                    Text("4. \(meal.strIngredient4.capitalized)")
                    Text("5. \(meal.strIngredient5.capitalized)")
                    Text("6. \(meal.strIngredient6.capitalized)")
                    Text("7. \(meal.strIngredient7.capitalized)")
                } header: {
                    Text("Ingredients: ")
                        .font(.system(size: 25))
                        .foregroundColor(.pink)
                        .bold()
                }
            }
            .listStyle(.insetGrouped)
            .listItemTint(.pink)
        }
        .toolbar {
            Button {
                if isRecipeFavorited {
                    favManager.removeRecipefromFavs(recipe: meal)
                } else {
                    favManager.addRecipeToFavs(recipe: meal)
                }
                isRecipeFavorited.toggle()
            } label: {
                Image(systemName: isRecipeFavorited ? "heart.fill" : "heart")
            }
        
        }
        
    }
}


