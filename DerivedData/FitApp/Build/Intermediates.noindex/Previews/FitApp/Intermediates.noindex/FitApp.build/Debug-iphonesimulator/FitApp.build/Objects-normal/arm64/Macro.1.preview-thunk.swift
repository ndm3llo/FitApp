@_private(sourceFile: "Macro.swift") import FitApp
import SwiftUI
import SwiftUI

extension MacroView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/Macro.swift", line: 78)
        MacroView(calories: .constant(__designTimeInteger("#5226.[2].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: 2000)), fat: .constant(__designTimeInteger("#5226.[2].[0].property.[0].[0].arg[1].value.arg[0].value", fallback: 2000)), carbs: .constant(__designTimeInteger("#5226.[2].[0].property.[0].[0].arg[2].value.arg[0].value", fallback: 2000)), protein: .constant(__designTimeInteger("#5226.[2].[0].property.[0].[0].arg[3].value.arg[0].value", fallback: 2000)))
    
#sourceLocation()
    }
}

extension MacroView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/Macro.swift", line: 17)
            ZStack {
                VStack(spacing: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 55)) {
                    VStack(alignment: .leading, spacing: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: 5)) { // Adjust spacing as needed
                        Text(__designTimeString("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: "Calories"))
                            .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                            .bold()
                            .foregroundColor(Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                            .kerning(__designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[4].arg[3].value", fallback: 0))
                        Text("\(calories)")
                            .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 25)))
                            .padding(.leading, __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[1].modifier[1].arg[1].value", fallback: 52))
                    }
                    VStack(alignment: .leading, spacing: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value", fallback: 5)) {
                        HStack {
                            Text(__designTimeString("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "Fats"))
                                .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                                .kerning(__designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 0))
                            Spacer()
                        }
                        Text("\(fat) grams")
                            .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 25)))
                    }
                    VStack(alignment: .leading, spacing: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value", fallback: 5)) {
                        HStack {
                            Text(__designTimeString("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "Carbs"))
                                .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                                .kerning(__designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 0))
                            Spacer()
                        }
                        Text("\(carbs) grams")
                            .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 25)))
                        
                    }
                    VStack(alignment: .leading, spacing: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value", fallback: 5)) {
                        HStack {
                            Text(__designTimeString("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "Protein"))
                                .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                                .kerning(__designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(__designTimeFloat("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 0))
                            Spacer()
                        }
                        Text("\(protein) grams")
                            .font(.system(size: __designTimeInteger("#5226.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[2].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 25)))
                    }
                }
                .padding()
            }
    
#sourceLocation()
    }
}

import struct FitApp.MacroView
import struct FitApp.MacroView_Previews

