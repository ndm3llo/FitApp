//
//  TwoDayStatic.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/21/24.
//

import SwiftUI

struct TwoDayStatic: View {
    var selectedEmphasis: String?
    var day1Exercises: [Exercise]
    var day2Exercises: [Exercise]
    
    var body: some View {
            VStack {
                VStack {
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
                        ForEach(day1Exercises, id: \.name) { exercise in
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
                        ForEach(day2Exercises, id: \.name) { exercise in
                            Text(exercise.name)
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(Color.blue.opacity(0.38))
                                .kerning(2)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(0.3))
            }
    }
}

struct TwoDayStatic_Previews: PreviewProvider {
    static var previews: some View {
        TwoDayStatic(
            selectedEmphasis: "Chest",
            day1Exercises: [
                Exercise(name: "Incline Smith Machine Press", videoURL: URL(string: "file:///path/to/your/video1.mp4")!, bodyPart: "Hamstrings"),
                Exercise(name: "Flat Bench Press", videoURL: URL(string: "file:///path/to/your/video2.mp4")!, bodyPart: "Hamstrings")
            ],
            day2Exercises: [
                Exercise(name: "Squats", videoURL: URL(string: "file:///path/to/your/video3.mp4")!, bodyPart: "Hamstrings"),
                Exercise(name: "Deadlifts", videoURL: URL(string: "file:///path/to/your/video4.mp4")!, bodyPart: "Hamstrings")
            ]
        )
    }
}
