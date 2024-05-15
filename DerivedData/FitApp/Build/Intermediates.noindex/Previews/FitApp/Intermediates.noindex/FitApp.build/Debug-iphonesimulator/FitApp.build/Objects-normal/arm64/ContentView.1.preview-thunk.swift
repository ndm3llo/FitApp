@_private(sourceFile: "ContentView.swift") import FitApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 192)
        WorkoutPlanning()
    
#sourceLocation()
    }
}

extension Final {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 183)
        VStack {
            Text(__designTimeString("#5182.[6].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Fit App"))
        }
    
#sourceLocation()
    }
}

extension Emphasis {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 140)
        VStack(spacing: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(.white)
                    .frame(width: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "What body part would you like to focus on?"))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Body Parts"), prompt: __designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: body_parts, select: $selectedEmphasis)
                
            }
            Spacer()
            
            VStack {
                NavigationLink(destination: Final()) {
                    Text(__designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                        .overlay(RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2)))
                }
            }
        }
    
#sourceLocation()
    }
}

extension NumDays {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 84)
        VStack(spacing: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5182.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(.white)
                    .frame(width: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "How many days a week can you workout (At least 45 minutes)?"))
                            .multilineTextAlignment(.center)
                        .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5182.[4].[3].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Days per Week"), prompt: __designTimeString("#5182.[4].[3].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: days_week, select: $selectedDays)

            }
            Spacer()
            VStack {
                NavigationLink(destination: Emphasis(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
                    Text(__designTimeString("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[4].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }

        }
    
#sourceLocation()
    }
}

extension WorkoutPlanning {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 67)
        NavigationView {
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)
        }
    
#sourceLocation()
    }
}

extension UserInfo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 57)
        VStack {
            Text(__designTimeString("#5182.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Fit App"))
        }
    
#sourceLocation()
    }
}

extension FirstPage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 12)
        VStack {
            ZStack {
                NavigationLink(destination: UserInfo()) {
                    Image(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "setting"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 40))
                        .padding(.leading, __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[1].value", fallback: -160))
                }
            }
            VStack(spacing: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 40)) {
                ZStack {
                    Text(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Fit App"))
                        .font(.system(size: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                        .bold()
                        .kerning(__designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                        .shadow(color: .gray, radius: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                    
                }
                ZStack {
                    Image(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "Starter"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 400), height: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[1].value", fallback: 250))
                }
                Spacer()
            }
            VStack {
                ZStack {
                    
                }
                ZStack {
                    
                }
                ZStack {
                    
                }
            }
        }
        
    
#sourceLocation()
    }
}

import struct FitApp.FirstPage
import struct FitApp.UserInfo
import struct FitApp.WorkoutPlanning
import struct FitApp.NumDays
import struct FitApp.Emphasis
import struct FitApp.Final
import struct FitApp.ContentView_Previews

