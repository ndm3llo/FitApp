@_private(sourceFile: "ContentView.swift") import FitApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 482)
        FirstPage()
    
#sourceLocation()
    }
}

extension Plan {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 452)
        VStack {
            if selectedDays == nil || selectedEmphasis == nil {
                Text(__designTimeString("#5112.[8].[3].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: "Error: Missing Days or Emphasis"))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(__designTimeFloat("#5112.[8].[3].property.[0].[0].arg[0].value.[0].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
            }
            else {
                VStack {
                    TwoDay(selectedEmphasis: selectedEmphasis, selectedDays: selectedDays, exerciseModel: exerciseModel)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(__designTimeFloat("#5112.[8].[3].property.[0].[0].arg[0].value.[0].[1].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
            }
        }
    
#sourceLocation()
    }
}

extension Emphasis {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 392)
        VStack(spacing: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(Color.blue.opacity(__designTimeFloat("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.10)))
                    .frame(width: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "What body part would you like to focus on?"))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Body Parts"), prompt: __designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: body_parts, select: $selectedEmphasis)
                if selectedEmphasis == "Legs" {
                        DropdownView(title: __designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].arg[0].value", fallback: "Leg Options"), prompt: __designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].arg[1].value", fallback: "Select"), options: leg_options, select: $selectedEmphasis)
                        .padding(.top, __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 300))
                }
                if selectedEmphasis == "Arms" {
                        DropdownView(title: __designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].arg[0].value", fallback: "Arm Options"), prompt: __designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].arg[1].value", fallback: "Select"), options: arm_options, select: $selectedEmphasis)
                        .padding(.top, __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].modifier[0].arg[1].value", fallback: 300))
                }
                
            }
            Spacer()
            
            VStack {
                
                NavigationLink(destination: Plan(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)) {
                    Text(__designTimeString("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                        .overlay(RoundedRectangle(cornerRadius: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5112.[7].[8].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5112.[7].[8].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
    
#sourceLocation()
    }
}

extension NumDays {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 322)
        VStack(spacing: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5112.[6].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(Color.blue.opacity(__designTimeFloat("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.10)))
                    .frame(width: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "How many days a week can you workout (At least 45 minutes)?"))
                            .multilineTextAlignment(.center)
                        .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5112.[6].[4].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Days per Week"), prompt: __designTimeString("#5112.[6].[4].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: days_week, select: $selectedDays)

            }
            Spacer()
            VStack {
                NavigationLink(destination: Emphasis(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)) {
                    Text(__designTimeString("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5112.[6].[4].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5112.[6].[4].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
        //.ignoresSafeArea()
    
#sourceLocation()
    }
}

extension WorkoutPlanning {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 306)
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)
    
#sourceLocation()
    }
}

extension CurrentPlan {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 155)
            ZStack {
                Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.3))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        if exerciseModel.day1Exercises.isEmpty {
                            VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: 70)) {
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].arg[0].value", fallback: "Plan"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                                    .bold()
                                    .foregroundColor(.gray)
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 8))
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].arg[0].value", fallback: "No Plan Yet"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[1].modifier[4].arg[3].value", fallback: 6))
                            }
                        }
                        else {
                            VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[0].value", fallback: 70)) {
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[0].arg[0].value", fallback: "Plan"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                                    .bold()
                                    .foregroundColor(.gray)
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 8))
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].arg[0].value", fallback: "Day 1"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[0].arg[1].value.[1].modifier[4].arg[3].value", fallback: 6))
                            }
                            VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[1].arg[0].value", fallback: 12)) {
                                ForEach(exerciseModel.day1Exercises, id: \.name) { exercise in
                                    Text(exercise.name)
                                        .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                        .bold()
                                        .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                        .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                                }
                            }
                            Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].arg[0].value", fallback: "Day 2"))
                                .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[4].arg[3].value", fallback: 6))
                                .padding(.top, __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[2].modifier[5].arg[1].value", fallback: 40))
                            
                            VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[3].arg[0].value", fallback: 12)) {
                                ForEach(exerciseModel.day2Exercises, id: \.name) { exercise in
                                    Text(exercise.name)
                                        .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[3].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                        .bold()
                                        .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[3].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                        .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[3].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                                }
                            }
                            if !exerciseModel.day3Exercises.isEmpty {
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].arg[0].value", fallback: "Day 3"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                    .padding(.top, __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[0].modifier[5].arg[1].value", fallback: 40))
                                
                                VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[1].arg[0].value", fallback: 12)) {
                                    ForEach(exerciseModel.day3Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                            .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[4].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                                    }
                                }
                            }
                            if !exerciseModel.day4Exercises.isEmpty {
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].arg[0].value", fallback: "Day 4"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                    .padding(.top, __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[0].modifier[5].arg[1].value", fallback: 40))
                                
                                VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[1].arg[0].value", fallback: 12)) {
                                    ForEach(exerciseModel.day4Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                            .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[5].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                                    }
                                }
                            }
                            if !exerciseModel.day5Exercises.isEmpty {
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].arg[0].value", fallback: "Day 5"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                    .padding(.top, __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[0].modifier[5].arg[1].value", fallback: 40))
                                
                                VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[1].arg[0].value", fallback: 12)) {
                                    ForEach(exerciseModel.day5Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                            .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[6].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                                    }
                                }
                            }
                            if !exerciseModel.day6Exercises.isEmpty {
                                Text(__designTimeString("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].arg[0].value", fallback: "Day 6"))
                                    .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                                    .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                    .shadow(color: .gray, radius: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                    .padding(.top, __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[0].modifier[5].arg[1].value", fallback: 40))
                                
                                VStack(spacing: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[1].arg[0].value", fallback: 12)) {
                                    ForEach(exerciseModel.day6Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: __designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                            .kerning(__designTimeInteger("#5112.[4].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[1].[7].[0].[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                                    }
                                }
                            }
                        }
                    }
                }
            }
        
#sourceLocation()
    }
}

extension NutritionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 103)
        NavigationStack {
            ZStack {
                Color.blue.opacity(__designTimeFloat("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.3))
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: __designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 10)){
                    Text(__designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Food Tracker"))
                        .font(.system(size: __designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                        .bold()
                        .foregroundColor(Color.black.opacity(__designTimeFloat("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                        .kerning(__designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                        .shadow(color: Color.black.opacity(__designTimeFloat("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[3].value", fallback: 0))
                        .padding(.top, __designTimeInteger("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[5].arg[1].value", fallback: -80))
                    MacroView(calories: $calories, fat: $fat, carbs: $carbs, protein: $protein)
                        .alert(__designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[0].value", fallback: "MacroTracker"), isPresented: $showTextField, actions: {
                            TextField(__designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Food"), text: $food)
                            Button(__designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[2].value.[1].arg[0].value", fallback: "Cancel"), role: .cancel, action: {})
                            Button(__designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[2].value.[2].arg[0].value", fallback: "Done")) {
                                Task {
                                    do {
                                        try await OpenAiService.shared.sendPromptToChatGPT(message: food)
                                    } catch {
                                        print(error.localizedDescription)
                                    }
                                }
                            }
                        }, message: {
                            Text(__designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Please enter the meal you want to track"))
                            
                        })
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button {
                                    showTextField = true
                                } label: {
                                    Image(systemName: __designTimeString("#5112.[3].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus"))
                                        .foregroundStyle(.black, .black)
                                }
                            }
                        
                    }
                }
            }
        }
    
#sourceLocation()
    }
}

extension UserInfo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 89)
        NavigationView {
            Text(__designTimeString("#5112.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Back"))
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
                        Image(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "setting"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 40))
                    }
                }
                .padding(.leading, __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: -160))
                VStack(spacing: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 30)) {
                    VStack{
                        Text(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout"))
                            .font(.system(size: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 55)))
                            .bold()
                            .foregroundColor(Color.black.opacity(__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                            .kerning(__designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: Color.black.opacity(__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 10)) // Add a shadow effect
                        Text(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Warrior"))
                            .font(.system(size: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 55)))
                            .bold()
                            .foregroundColor(Color.black.opacity(__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                            .kerning(__designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: Color.black.opacity((__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[0].value.modifier[0].arg[0].value.[0]", fallback: 0.4))), radius: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[3].value", fallback: 10)) // Add a shadow effect
                    }
                    ZStack {
                        Image(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "letsee"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 500), height: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[1].value", fallback: 350))
                    }
                    //Spacer()
                }
                VStack {
                    ZStack {
                        NavigationLink(destination: CurrentPlan(exerciseModel: exerciseModel)) {
                            Text(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Current Plan"))
                                .font(.system(size: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(Color.black.opacity(__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.7)))
                                .kerning(__designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                                .shadow(color: Color.black.opacity(__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.4)), radius: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 0))
                        }
                    }
                    ZStack {
                        NavigationLink(destination: WorkoutPlanning(exerciseModel: exerciseModel)) {
                            Image(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "dumbell2"))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 65), height: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 60))
                        }
                    }
                    .padding(.leading, __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[1].value", fallback: -160))
                    ZStack {
                        NavigationLink(destination: NutritionView()) {
                            Image(__designTimeString("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "food"))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 62), height: __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 60))
                        }
                    }
                    .padding(.leading, __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[2].modifier[0].arg[1].value", fallback: -158))
                    .padding(.bottom, __designTimeInteger("#5112.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[2].modifier[1].arg[1].value", fallback: 50))
                    ZStack {
                        
                    }
                }
            }
            .background(Color.blue.opacity(__designTimeFloat("#5112.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
        }
    
#sourceLocation()
    }
}

import struct FitApp.FirstPage
import struct FitApp.UserInfo
import struct FitApp.NutritionView
import struct FitApp.CurrentPlan
import struct FitApp.WorkoutPlanning
import struct FitApp.NumDays
import struct FitApp.Emphasis
import struct FitApp.Plan
import class FitApp.ExerciseModel
import struct FitApp.ContentView_Previews

