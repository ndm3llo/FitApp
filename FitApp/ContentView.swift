//
//  ContentView.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/15/24.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        VStack {
            ZStack {
                NavigationLink(destination: UserInfo()) {
                    Image("setting")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 40)
                        .padding(.leading, -160)
                }
            }
            VStack(spacing: 40) {
                ZStack {
                    Text("Fit App")
                        .font(.system(size: 50))
                        .bold()
                        .kerning(2) // Adjust letter spacing
                        .shadow(color: .gray, radius: 4, x: 4, y: 10) // Add a shadow effect
                    
                }
                ZStack {
                    Image("Starter")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 250)
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
        
    }
}

struct UserInfo: View {
    var body: some View {
        VStack {
            Text("Fit App")
        }
    }
}

struct WorkoutPlanning: View {
    @State private var selectedDays: String?
    @State private var selectedEmphasis: String?
    var body: some View {
        NavigationView {
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)
        }
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
                    .fill(.white)
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
                    .fill(.white)
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
                
            }
            Spacer()
            
            VStack {
                NavigationLink(destination: Final()) {
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
    }
}

struct Final: View {
    var body: some View {
        VStack {
            Text("Fit App")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutPlanning()
    }
}
