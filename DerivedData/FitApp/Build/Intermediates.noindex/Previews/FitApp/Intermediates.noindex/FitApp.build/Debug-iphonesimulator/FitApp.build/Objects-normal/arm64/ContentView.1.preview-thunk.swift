@_private(sourceFile: "ContentView.swift") import FitApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 353)
        FirstPage()
    
#sourceLocation()
    }
}

extension ExerciseModel {
    @_dynamicReplacement(for: loadFromUserDefaults()) private func __preview__loadFromUserDefaults() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 340)
        // Load the exercises from UserDefaults
        if let data = UserDefaults.standard.data(forKey: "day1Exercises"),
           let decoded = try? JSONDecoder().decode([Exercise].self, from: data) {
            day1Exercises = decoded
        }
        if let data = UserDefaults.standard.data(forKey: "day2Exercises"),
           let decoded = try? JSONDecoder().decode([Exercise].self, from: data) {
            day2Exercises = decoded
        }
    
#sourceLocation()
    }
}

extension ExerciseModel {
    @_dynamicReplacement(for: saveToUserDefaults()) private func __preview__saveToUserDefaults() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 330)
        // Convert the exercises to data
        if let encoded = try? JSONEncoder().encode(day1Exercises) {
            UserDefaults.standard.set(encoded, forKey: __designTimeString("#5182.[8].[3].[0].[0].[0].modifier[0].arg[1].value", fallback: "day1Exercises"))
        }
        if let encoded = try? JSONEncoder().encode(day2Exercises) {
            UserDefaults.standard.set(encoded, forKey: __designTimeString("#5182.[8].[3].[1].[0].[0].modifier[0].arg[1].value", fallback: "day2Exercises"))
        }
    
#sourceLocation()
    }
}

extension Plan {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 293)
        VStack {
            if selectedDays == nil || selectedEmphasis == nil {
                Text(__designTimeString("#5182.[7].[3].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: "Error: Missing Days or Emphasis"))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(__designTimeFloat("#5182.[7].[3].property.[0].[0].arg[0].value.[0].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
            }
            else {
                if selectedDays == "Two" {
                    VStack {
                        TwoDay(selectedEmphasis: selectedEmphasis, selectedDays: selectedDays, exerciseModel: exerciseModel)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue.opacity(__designTimeFloat("#5182.[7].[3].property.[0].[0].arg[0].value.[0].[1].[0].[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
                }
                else {
                    Text(__designTimeString("#5182.[7].[3].property.[0].[0].arg[0].value.[0].[1].[0].[1].[0].arg[0].value", fallback: "Workout"))
                        .font(.system(size: __designTimeInteger("#5182.[7].[3].property.[0].[0].arg[0].value.[0].[1].[0].[1].[0].modifier[0].arg[0].value.arg[0].value", fallback: 35)))
                        .bold()
                        .foregroundColor(Color.gray.opacity(__designTimeFloat("#5182.[7].[3].property.[0].[0].arg[0].value.[0].[1].[0].[1].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)))
                }
            }
        }
    
#sourceLocation()
    }
}

extension Emphasis {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 233)
        VStack(spacing: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(Color.blue.opacity(__designTimeFloat("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.10)))
                    .frame(width: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "What body part would you like to focus on?"))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Body Parts"), prompt: __designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: body_parts, select: $selectedEmphasis)
                if selectedEmphasis == "Legs" {
                        DropdownView(title: __designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].arg[0].value", fallback: "Leg Options"), prompt: __designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].arg[1].value", fallback: "Select"), options: leg_options, select: $selectedEmphasis)
                        .padding(.top, __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 300))
                }
                if selectedEmphasis == "Arms" {
                        DropdownView(title: __designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].arg[0].value", fallback: "Arm Options"), prompt: __designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].arg[1].value", fallback: "Select"), options: arm_options, select: $selectedEmphasis)
                        .padding(.top, __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].modifier[0].arg[1].value", fallback: 300))
                }
                
            }
            Spacer()
            
            VStack {
                
                NavigationLink(destination: Plan(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)) {
                    Text(__designTimeString("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                        .overlay(RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[6].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5182.[6].[8].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
    
#sourceLocation()
    }
}

extension NumDays {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 163)
        VStack(spacing: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5182.[5].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(Color.blue.opacity(__designTimeFloat("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.10)))
                    .frame(width: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "How many days a week can you workout (At least 45 minutes)?"))
                            .multilineTextAlignment(.center)
                        .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5182.[5].[4].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Days per Week"), prompt: __designTimeString("#5182.[5].[4].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: days_week, select: $selectedDays)

            }
            Spacer()
            VStack {
                NavigationLink(destination: Emphasis(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)) {
                    Text(__designTimeString("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[5].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5182.[5].[4].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
        //.ignoresSafeArea()
    
#sourceLocation()
    }
}

extension WorkoutPlanning {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 147)
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)
    
#sourceLocation()
    }
}

extension Nutrition {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 92)
                VStack {
                    VStack {
                        VStack(spacing: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 70)) {
                            Text(__designTimeString("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Plan"))
                                .font(.system(size: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                                .bold()
                                .foregroundColor(.gray)
                                .kerning(__designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 8))
                            Text(__designTimeString("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Day 1"))
                                .font(.system(size: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(Color.blue.opacity(__designTimeFloat("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                .kerning(__designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[3].value", fallback: 6))
                        }
                        VStack(spacing: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 12)) {
                            ForEach(exerciseModel.day1Exercises, id: \.name) { exercise in
                                Text(exercise.name)
                                    .font(.system(size: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                    .kerning(__designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                            }
                        }
                        Text(__designTimeString("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Day 2"))
                            .font(.system(size: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                            .bold()
                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                            .kerning(__designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[3].arg[0].value", fallback: 2))
                            .shadow(color: .gray, radius: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[3].value", fallback: 6))
                            .padding(.top, __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[5].arg[1].value", fallback: 40))
                        
                        VStack(spacing: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: 12)) {
                            ForEach(exerciseModel.day2Exercises, id: \.name) { exercise in
                                Text(exercise.name)
                                    .font(.system(size: __designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                    .kerning(__designTimeInteger("#5182.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue.opacity(__designTimeFloat("#5182.[3].[2].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
                }
        
#sourceLocation()
    }
}

extension UserInfo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 79)
        NavigationView {
            Text(__designTimeString("#5182.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Back"))
        }
    
#sourceLocation()
    }
}

extension FirstPage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 13)
        NavigationView {
            VStack {
                ZStack {
                    NavigationLink(destination: UserInfo()) {
                        Image(__designTimeString("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "setting"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 40))
                    }
                }
                .padding(.leading, __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: -160))
                VStack(spacing: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 30)) {
                    VStack{
                        Text(__designTimeString("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout"))
                            .font(.system(size: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                            .bold()
                            .foregroundColor(Color.gray.opacity(__designTimeFloat("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)))
                            .kerning(__designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: Color.gray.opacity(__designTimeFloat("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)), radius: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 10)) // Add a shadow effect
                        Text(__designTimeString("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Warrior"))
                            .font(.system(size: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                            .bold()
                            .foregroundColor(.gray)
                            .kerning(__designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: .gray, radius: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[3].value", fallback: 10)) // Add a shadow effect
                    }
                    ZStack {
                        Image(__designTimeString("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "letsee"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 500), height: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[1].value", fallback: 350))
                    }
                    //Spacer()
                }
                VStack {
                    ZStack {
                        NavigationLink(destination: WorkoutPlanning(exerciseModel: exerciseModel)) {
                            Image(__designTimeString("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "dumbell2"))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 65), height: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 60))
                        }
                    }
                    .padding(.leading, __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[1].value", fallback: -160))
                    ZStack {
                        NavigationLink(destination: Nutrition(exerciseModel: exerciseModel)) {
                            Image(__designTimeString("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "food"))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 62), height: __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 60))
                        }
                    }
                    .padding(.leading, __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[1].value", fallback: -158))
                    .padding(.bottom, __designTimeInteger("#5182.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[1].arg[1].value", fallback: 100))
                    ZStack {
                        
                    }
                }
            }
            .background(Color.blue.opacity(__designTimeFloat("#5182.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
        }
    
#sourceLocation()
    }
}

import struct FitApp.FirstPage
import struct FitApp.UserInfo
import struct FitApp.Nutrition
import struct FitApp.WorkoutPlanning
import struct FitApp.NumDays
import struct FitApp.Emphasis
import struct FitApp.Plan
import class FitApp.ExerciseModel
import struct FitApp.ContentView_Previews

