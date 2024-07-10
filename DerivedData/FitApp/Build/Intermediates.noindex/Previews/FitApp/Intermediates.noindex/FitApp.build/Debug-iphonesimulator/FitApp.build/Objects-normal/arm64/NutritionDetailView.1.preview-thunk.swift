@_private(sourceFile: "NutritionDetailView.swift") import FitApp
import SwiftUI
import SwiftUI

extension NutritionDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/NutritionDetailView.swift", line: 41)
        let sampleNutrition = FoodNutrition(name: __designTimeString("#16207.[2].[0].property.[0].[0].value.arg[0].value", fallback: "Sample Food"), calories: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[1].value", fallback: 100), servingSizeGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[2].value", fallback: 50), fatTotalGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[3].value", fallback: 5), fatSaturatedGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[4].value", fallback: 2), proteinGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[5].value", fallback: 10), sodiumMilligrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[6].value", fallback: 100), potassiumMilligrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[7].value", fallback: 200), cholesterolMilligrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[8].value", fallback: 50), carbohydratesTotalGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[9].value", fallback: 20), fiberGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[10].value", fallback: 3), sugarGrams: __designTimeInteger("#16207.[2].[0].property.[0].[0].value.arg[11].value", fallback: 5))
        return NutritionDetailView(foodNutrition: sampleNutrition)
            .padding()
    
#sourceLocation()
    }
}

extension NutritionDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/NutritionDetailView.swift", line: 14)
        VStack(alignment: .leading, spacing: __designTimeInteger("#16207.[1].[1].property.[0].[0].arg[1].value", fallback: 10)) {
            Group {
                Text("Name: \(foodNutrition.name)")
                Text("Calories: \(foodNutrition.calories, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Serving Size (g): \(foodNutrition.servingSizeGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[0].arg[0].value.[2].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Total Fat (g): \(foodNutrition.fatTotalGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[0].arg[0].value.[3].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Saturated Fat (g): \(foodNutrition.fatSaturatedGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[0].arg[0].value.[4].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Protein (g): \(foodNutrition.proteinGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[0].arg[0].value.[5].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
            }
            Group {
                Text("Sodium (mg): \(foodNutrition.sodiumMilligrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value.[0].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Potassium (mg): \(foodNutrition.potassiumMilligrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value.[1].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Cholesterol (mg): \(foodNutrition.cholesterolMilligrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value.[2].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Total Carbohydrates (g): \(foodNutrition.carbohydratesTotalGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value.[3].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Fiber (g): \(foodNutrition.fiberGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value.[4].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                Text("Sugar (g): \(foodNutrition.sugarGrams, specifier: __designTimeString("#16207.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value.[5].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
            }
        }
        .padding()
        .background(Color.blue.opacity(__designTimeFloat("#16207.[1].[1].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
        .cornerRadius(__designTimeInteger("#16207.[1].[1].property.[0].[0].modifier[2].arg[0].value", fallback: 10))
    
#sourceLocation()
    }
}

import struct FitApp.NutritionDetailView
import struct FitApp.NutritionDetailView_Previews

