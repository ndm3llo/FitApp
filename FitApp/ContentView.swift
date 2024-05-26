//
//  ContentView.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/15/24.
//

import SwiftUI

struct FirstPage: View {
    @StateObject private var exerciseModel = ExerciseModel()
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    NavigationLink(destination: UserInfo()) {
                        Image("setting")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 40)
                    }
                }
                .padding(.leading, -160)
                VStack(spacing: 30) {
                    VStack{
                        Text("Workout")
                            .font(.system(size: 50))
                            .bold()
                            .foregroundColor(Color.gray.opacity(0.9))
                            .kerning(2) // Adjust letter spacing
                            .shadow(color: Color.gray.opacity(0.9), radius: 4, x: 4, y: 10) // Add a shadow effect
                        Text("Warrior")
                            .font(.system(size: 50))
                            .bold()
                            .foregroundColor(.gray)
                            .kerning(2) // Adjust letter spacing
                            .shadow(color: .gray, radius: 4, x: 4, y: 10) // Add a shadow effect
                    }
                    ZStack {
                        Image("letsee")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 500, height: 350)
                    }
                    //Spacer()
                }
                VStack {
                    ZStack {
                        NavigationLink(destination: WorkoutPlanning(exerciseModel: exerciseModel)) {
                            Image("dumbell2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 65, height: 60)
                        }
                    }
                    .padding(.leading, -160)
                    ZStack {
                        NavigationLink(destination: Nutrition(exerciseModel: exerciseModel)) {
                            Image("food")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 62, height: 60)
                        }
                    }
                    .padding(.leading, -158)
                    .padding(.bottom, 100)
                    ZStack {
                        
                    }
                }
            }
            .background(Color.blue.opacity(0.3))
        }
    }
}

struct UserInfo: View {
    var body: some View {
        NavigationView {
            Text("Back")
        }
    }
}

struct Nutrition: View {
        var exerciseModel: ExerciseModel
        init(exerciseModel: ExerciseModel) {
            self.exerciseModel = exerciseModel
        }
        var body: some View {
            ZStack {
                Color.blue.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        if exerciseModel.day1Exercises.isEmpty {
                            VStack(spacing: 70) {
                                Text("Plan")
                                    .font(.system(size: 45))
                                    .bold()
                                    .foregroundColor(.gray)
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 8)
                                Text("No Plan Yet")
                                    .font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.42))
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 6, x: 1, y: 6)
                            }
                        }
                        else {
                            VStack(spacing: 70) {
                                Text("Plan")
                                    .font(.system(size: 45))
                                    .bold()
                                    .foregroundColor(.gray)
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 3, x: 3, y: 8)
                                Text("Day 1")
                                    .font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.42))
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 6, x: 1, y: 6)
                            }
                            VStack(spacing: 12) {
                                ForEach(exerciseModel.day1Exercises, id: \.name) { exercise in
                                    Text(exercise.name)
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundColor(Color.blue.opacity(0.38))
                                        .kerning(2)
                                }
                            }
                            Text("Day 2")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.blue.opacity(0.42))
                                .kerning(2)
                                .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                .padding(.top, 40)
                            
                            VStack(spacing: 12) {
                                ForEach(exerciseModel.day2Exercises, id: \.name) { exercise in
                                    Text(exercise.name)
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundColor(Color.blue.opacity(0.38))
                                        .kerning(2)
                                }
                            }
                            if !exerciseModel.day3Exercises.isEmpty {
                                Text("Day 3")
                                    .font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.42))
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                    .padding(.top, 40)
                                
                                VStack(spacing: 12) {
                                    ForEach(exerciseModel.day3Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: 20))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(0.38))
                                            .kerning(2)
                                    }
                                }
                            }
                            if !exerciseModel.day4Exercises.isEmpty {
                                Text("Day 4")
                                    .font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.42))
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                    .padding(.top, 40)
                                
                                VStack(spacing: 12) {
                                    ForEach(exerciseModel.day4Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: 20))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(0.38))
                                            .kerning(2)
                                    }
                                }
                            }
                            if !exerciseModel.day5Exercises.isEmpty {
                                Text("Day 5")
                                    .font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.42))
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                    .padding(.top, 40)
                                
                                VStack(spacing: 12) {
                                    ForEach(exerciseModel.day5Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: 20))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(0.38))
                                            .kerning(2)
                                    }
                                }
                            }
                            if !exerciseModel.day6Exercises.isEmpty {
                                Text("Day 6")
                                    .font(.system(size: 30))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.42))
                                    .kerning(2)
                                    .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                    .padding(.top, 40)
                                
                                VStack(spacing: 12) {
                                    ForEach(exerciseModel.day6Exercises, id: \.name) { exercise in
                                        Text(exercise.name)
                                            .font(.system(size: 20))
                                            .bold()
                                            .foregroundColor(Color.blue.opacity(0.38))
                                            .kerning(2)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }


struct WorkoutPlanning: View {
    @State private var selectedDays: String?
    @State private var selectedEmphasis: String?
    var exerciseModel: ExerciseModel
    var body: some View {
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)
    }
}

struct NumDays: View {
    let days_week = [
            "Two",
            "Three",
            "Four",
            "Five",
            "Six"
    ]
    @Binding var selectedDays: String?
    @Binding var selectedEmphasis: String?
    var exerciseModel: ExerciseModel
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Text("Workout Planning")
                    .font(.system(size: 50))
                    .bold()
                    .kerning(2) // Adjust letter spacing
                    .shadow(color: .gray, radius: 4, x: 4, y: 10) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.opacity(0.10))
                    .frame(width: 240, height: 90)
                    .overlay(
                        Text("How many days a week can you workout (At least 45 minutes)?")
                            .multilineTextAlignment(.center)
                        .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: 22) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: 2)
                            .shadow(color: .primary.opacity(0.8), radius: 4))
            }
            ZStack {
                DropdownView(title: "Days per Week", prompt: "Select", options: days_week, select: $selectedDays)

            }
            Spacer()
            VStack {
                NavigationLink(destination: Emphasis(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)) {
                    Text("Next")
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .frame(width: 100, height: 50)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .shadow(color: .primary.opacity(0.8), radius: 4))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.3))
        //.ignoresSafeArea()
    }
}

struct Emphasis: View {
    let body_parts = [
        "Chest",
        "Back",
        "Arms",
        "Shoulders",
        "Legs"
    ]
    let leg_options = [
        "Quads",
        "Hamstrings",
        "Glutes"
    ]
    let arm_options = [
        "Biceps",
        "Triceps"
    ]
    @Binding var selectedDays: String?
    @Binding var selectedEmphasis: String?
    @State private var LegOptions = false
    @State private var ArmOptions = false
    var exerciseModel: ExerciseModel
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Text("Workout Planning")
                    .font(.system(size: 50))
                    .bold()
                    .kerning(2) // Adjust letter spacing
                    .shadow(color: .gray, radius: 4, x: 4, y: 10) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.opacity(0.10))
                    .frame(width: 240, height: 90)
                    .overlay(
                        Text("What body part would you like to focus on?")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: 22) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: 2)
                            .shadow(color: .primary.opacity(0.8), radius: 4))
            }
            ZStack {
                DropdownView(title: "Body Parts", prompt: "Select", options: body_parts, select: $selectedEmphasis)
                if selectedEmphasis == "Legs" {
                        DropdownView(title: "Leg Options", prompt: "Select", options: leg_options, select: $selectedEmphasis)
                        .padding(.top, 300)
                }
                if selectedEmphasis == "Arms" {
                        DropdownView(title: "Arm Options", prompt: "Select", options: arm_options, select: $selectedEmphasis)
                        .padding(.top, 300)
                }
                
            }
            Spacer()
            
            VStack {
                
                NavigationLink(destination: Plan(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis, exerciseModel: exerciseModel)) {
                    Text("Next")
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .frame(width: 100, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .shadow(color: .primary.opacity(0.8), radius: 4))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.3))
    }
}


struct Plan: View {
    @Binding var selectedDays: String?
    @Binding var selectedEmphasis: String?
    var exerciseModel: ExerciseModel
    var body: some View {
        VStack {
            if selectedDays == nil || selectedEmphasis == nil {
                Text("Error: Missing Days or Emphasis")
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(0.3))
            }
            else {
                VStack {
                    TwoDay(selectedEmphasis: selectedEmphasis, selectedDays: selectedDays, exerciseModel: exerciseModel)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(0.3))
            }
        }
    }
}


class ExerciseModel: ObservableObject {
    @Published var day1Exercises = [Exercise]()
    @Published var day2Exercises = [Exercise]()
    @Published var day3Exercises = [Exercise]()
    @Published var day4Exercises = [Exercise]()
    @Published var day5Exercises = [Exercise]()
    @Published var day6Exercises = [Exercise]()
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
