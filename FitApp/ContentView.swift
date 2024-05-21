//
//  ContentView.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/15/24.
//

import SwiftUI

struct FirstPage: View {
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
                        NavigationLink(destination: WorkoutPlanning()) {
                            Image("dumbell2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 65, height: 60)
                        }
                    }
                    .padding(.leading, -160)
                    ZStack {
                        NavigationLink(destination: Nutrition()) {
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
    var body: some View {
        NavigationView {
            Text("Back")
        }
    }
}

struct WorkoutPlanning: View {
    @State private var selectedDays: String?
    @State private var selectedEmphasis: String?
    var body: some View {
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)
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
                NavigationLink(destination: Emphasis(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
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
                
                NavigationLink(destination: Check(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
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

struct Check: View {
    @Binding var selectedDays: String?
    @Binding var selectedEmphasis: String?
    var body: some View {
        VStack {
            if selectedDays == nil || selectedEmphasis == nil {
                Text("Error: Missing Days or Emphasis")
                .foregroundColor(.black)
            }
            else {
                VStack {
                    Image("letsee")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 500, height: 350)
                    
                    Text("Selected Days: \(selectedDays!)")
                    Text("Selected Emphasis: \(selectedEmphasis!)")
                        
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 240, height: 90)
                            .overlay(
                        NavigationLink(destination: Plan(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
                            HStack {
                                Text("Get")
                                    .font(.system(size: 35))
                                    .bold()
                                    .foregroundColor(Color.gray.opacity(0.9))
                                    .kerning(2) // Adjust letter spacing
                                    .shadow(color: Color.gray.opacity(0.9), radius: 3, x: 3, y: 8) // Add a shadow effect
                                Text("Plan")
                                    .font(.system(size: 35))
                                    .bold()
                                    .foregroundColor(.gray)
                                    .kerning(2) // Adjust letter spacing
                                    .shadow(color: .gray, radius: 3, x: 3, y: 8) // Add a shadow effect
                                }
                                //.padding(.horizontal)
                            }
                        )
                    }
                    .padding(.top, 155)
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
    var body: some View {
        VStack {
            if selectedDays == "Two" {
                TwoDay(selectedEmphasis: selectedEmphasis)
            }
            else {
                Text("Workout")
                    .font(.system(size: 35))
                    .bold()
                    .foregroundColor(Color.gray.opacity(0.9))
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
