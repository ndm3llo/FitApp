//
//  Macro.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 7/2/24.
//

import SwiftUI

struct MacroView: View {
    @Binding var calories: Int
    @Binding var fat: Int
    @Binding var carbs: Int
    @Binding var protein: Int

    var body: some View {
            ZStack {
                VStack(spacing: 55) {
                    VStack(alignment: .leading, spacing: 5) { // Adjust spacing as needed
                        Text("Calories")
                            .font(.system(size: 40))
                            .bold()
                            .foregroundColor(Color.black.opacity(0.7))
                            .kerning(2) // Adjust letter spacing
                            .shadow(color: Color.black.opacity(0.4), radius: 4, x: 4, y: 0)
                        Text("\(calories)")
                            .font(.system(size: 25))
                            .padding(.leading, 52)
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Fats")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.black.opacity(0.7))
                                .kerning(2) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(0.4), radius: 4, x: 4, y: 0)
                            Spacer()
                        }
                        Text("\(fat) grams")
                            .font(.system(size: 25))
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Carbs")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.black.opacity(0.7))
                                .kerning(2) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(0.4), radius: 4, x: 4, y: 0)
                            Spacer()
                        }
                        Text("\(carbs) grams")
                            .font(.system(size: 25))
                        
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Protein")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.black.opacity(0.7))
                                .kerning(2) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(0.4), radius: 4, x: 4, y: 0)
                            Spacer()
                        }
                        Text("\(protein) grams")
                            .font(.system(size: 25))
                    }
                }
                .padding()
            }
    }
}

struct MacroView_Previews: PreviewProvider {
    static var previews: some View {
        MacroView(calories: .constant(2000), fat: .constant(2000), carbs: .constant(2000), protein: .constant(2000))
    }
}
