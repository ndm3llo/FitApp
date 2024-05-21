@_private(sourceFile: "ContentView.swift") import FitApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 308)
        FirstPage()
    
#sourceLocation()
    }
}

extension Plan {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 290)
        VStack {
            if selectedDays == "Two" {
                TwoDay(selectedEmphasis: selectedEmphasis)
            }
            else {
                Text(__designTimeString("#5182.[8].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value", fallback: "Workout"))
                    .font(.system(size: __designTimeInteger("#5182.[8].[2].property.[0].[0].arg[0].value.[0].[1].[0].modifier[0].arg[0].value.arg[0].value", fallback: 35)))
                    .bold()
                    .foregroundColor(Color.gray.opacity(__designTimeFloat("#5182.[8].[2].property.[0].[0].arg[0].value.[0].[1].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)))
            }
        }
    
#sourceLocation()
    }
}

extension Check {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 238)
        VStack {
            if selectedDays == nil || selectedEmphasis == nil {
                Text(__designTimeString("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: "Error: Missing Days or Emphasis"))
                .foregroundColor(.black)
            }
            else {
                VStack {
                    Image(__designTimeString("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[0].value", fallback: "letsee"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 500), height: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 350))
                    
                    Text("Selected Days: \(selectedDays!)")
                    Text("Selected Emphasis: \(selectedEmphasis!)")
                        
                    ZStack {
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: 30))
                            .fill(Color.gray.opacity(__designTimeFloat("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                            .frame(width: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                            .overlay(
                        NavigationLink(destination: Plan(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
                            HStack {
                                Text(__designTimeString("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Get"))
                                    .font(.system(size: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 35)))
                                    .bold()
                                    .foregroundColor(Color.gray.opacity(__designTimeFloat("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)))
                                    .kerning(__designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                                    .shadow(color: Color.gray.opacity(__designTimeFloat("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)), radius: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 8)) // Add a shadow effect
                                Text(__designTimeString("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Plan"))
                                    .font(.system(size: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 35)))
                                    .bold()
                                    .foregroundColor(.gray)
                                    .kerning(__designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                                    .shadow(color: .gray, radius: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[1].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[1].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0].arg[0].value.[1].modifier[4].arg[3].value", fallback: 8)) // Add a shadow effect
                                }
                                //.padding(.horizontal)
                            }
                        )
                    }
                    .padding(.top, __designTimeInteger("#5182.[7].[2].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value.[3].modifier[0].arg[1].value", fallback: 155))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5182.[7].[2].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
    
#sourceLocation()
    }
}

extension Emphasis {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 180)
        VStack(spacing: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[0].value", fallback: 20)) {
            ZStack {
                Text(__designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout Planning"))
                    .font(.system(size: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                    .bold()
                    .kerning(__designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 2)) // Adjust letter spacing
                    .shadow(color: .gray, radius: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 10)) // Add a shadow effect
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: 10))
                    .fill(Color.blue.opacity(__designTimeFloat("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.10)))
                    .frame(width: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "What body part would you like to focus on?"))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Body Parts"), prompt: __designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: body_parts, select: $selectedEmphasis)
                if selectedEmphasis == "Legs" {
                        DropdownView(title: __designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].arg[0].value", fallback: "Leg Options"), prompt: __designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].arg[1].value", fallback: "Select"), options: leg_options, select: $selectedEmphasis)
                        .padding(.top, __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[1].[0].[0].modifier[0].arg[1].value", fallback: 300))
                }
                if selectedEmphasis == "Arms" {
                        DropdownView(title: __designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].arg[0].value", fallback: "Arm Options"), prompt: __designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].arg[1].value", fallback: "Select"), options: arm_options, select: $selectedEmphasis)
                        .padding(.top, __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[2].arg[0].value.[2].[0].[0].modifier[0].arg[1].value", fallback: 300))
                }
                
            }
            Spacer()
            
            VStack {
                
                NavigationLink(destination: Check(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
                    Text(__designTimeString("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                        .overlay(RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[6].[7].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5182.[6].[7].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
    
#sourceLocation()
    }
}

extension NumDays {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 111)
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
                    .fill(Color.blue.opacity(__designTimeFloat("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.10)))
                    .frame(width: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 240), height: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 90))
                    .overlay(
                        Text(__designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "How many days a week can you workout (At least 45 minutes)?"))
                            .multilineTextAlignment(.center)
                        .foregroundColor(.black))
                    .overlay(
                        RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 22)) // Create another rounded rectangle
                            .stroke(Color.black, lineWidth: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
            }
            ZStack {
                DropdownView(title: __designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Days per Week"), prompt: __designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: "Select"), options: days_week, select: $selectedDays)

            }
            Spacer()
            VStack {
                NavigationLink(destination: Emphasis(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)) {
                    Text(__designTimeString("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Next"))
                        .foregroundColor(.black)
                        .cornerRadius(__designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 20))
                        .frame(width: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 100), height: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 10))
                            .stroke(.black, lineWidth: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[1].value", fallback: 2))
                            .shadow(color: .primary.opacity(__designTimeFloat("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.8)), radius: __designTimeInteger("#5182.[5].[3].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[1].arg[1].value", fallback: 4)))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(__designTimeFloat("#5182.[5].[3].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
        //.ignoresSafeArea()
    
#sourceLocation()
    }
}

extension WorkoutPlanning {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 96)
            NumDays(selectedDays: $selectedDays, selectedEmphasis: $selectedEmphasis)
    
#sourceLocation()
    }
}

extension Nutrition {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 86)
        NavigationView {
            Text(__designTimeString("#5182.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Back"))
        }
    
#sourceLocation()
    }
}

extension UserInfo {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 78)
        NavigationView {
            Text(__designTimeString("#5182.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Back"))
        }
    
#sourceLocation()
    }
}

extension FirstPage {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/ContentView.swift", line: 12)
        NavigationView {
            VStack {
                ZStack {
                    NavigationLink(destination: UserInfo()) {
                        Image(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "setting"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 40))
                    }
                }
                .padding(.leading, __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: -160))
                VStack(spacing: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 30)) {
                    VStack{
                        Text(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Workout"))
                            .font(.system(size: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                            .bold()
                            .foregroundColor(Color.gray.opacity(__designTimeFloat("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)))
                            .kerning(__designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: Color.gray.opacity(__designTimeFloat("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.9)), radius: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[4].arg[3].value", fallback: 10)) // Add a shadow effect
                        Text(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Warrior"))
                            .font(.system(size: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 50)))
                            .bold()
                            .foregroundColor(.gray)
                            .kerning(__designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 2)) // Adjust letter spacing
                            .shadow(color: .gray, radius: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[1].value", fallback: 4), x: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[2].value", fallback: 4), y: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[4].arg[3].value", fallback: 10)) // Add a shadow effect
                    }
                    ZStack {
                        Image(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "letsee"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[0].value", fallback: 500), height: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value.[0].modifier[2].arg[1].value", fallback: 350))
                    }
                    //Spacer()
                }
                VStack {
                    ZStack {
                        NavigationLink(destination: WorkoutPlanning()) {
                            Image(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "dumbell2"))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 65), height: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 60))
                        }
                    }
                    .padding(.leading, __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[1].value", fallback: -160))
                    ZStack {
                        NavigationLink(destination: Nutrition()) {
                            Image(__designTimeString("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "food"))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 62), height: __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 60))
                        }
                    }
                    .padding(.leading, __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[1].value", fallback: -158))
                    .padding(.bottom, __designTimeInteger("#5182.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[1].arg[1].value", fallback: 100))
                    ZStack {
                        
                    }
                }
            }
            .background(Color.blue.opacity(__designTimeFloat("#5182.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
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
import struct FitApp.Check
import struct FitApp.Plan
import struct FitApp.ContentView_Previews

