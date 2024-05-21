//
//  TwoDay.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/20/24.
//

import SwiftUI

struct TwoDay: View {
    var selectedEmphasis: String?

    @State private var randomExercisesDay1: [Exercise] = []
    @State private var randomExercisesDay2: [Exercise] = []

    var body: some View {
        NavigationView {
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
                        ForEach(randomExercisesDay1, id: \.self) { exercise in
                            NavigationLink(destination: ExerciseDetail(exercise: exercise, bodyPart: exercise.bodyPart)) {
                                Text(exercise.name)
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.38))
                                    .kerning(2)
                            }
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
                        ForEach(randomExercisesDay2, id: \.self) { exercise in
                            NavigationLink(destination: ExerciseDetail(exercise: exercise, bodyPart: exercise.bodyPart)) {
                                Text(exercise.name)
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(0.38))
                                    .kerning(2)
                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(0.3))
            }
        }
        .onAppear {
            initializeExercises()
        }
    }

    private func initializeExercises() {
        var day1Exercises = [
            UpperChest().getRandomExercise(),
            UpperBack().getRandomExercise(),
            FrontDelts().getRandomExercise(),
            Biceps().getRandomExercise()
        ].compactMap { $0 }

        var day2Exercises = [
            VastusQuads().getRandomExercise(),
            Hamstrings().getRandomExercise(),
            Glutes().getRandomExercise(),
            LongHead().getRandomExercise()
        ].compactMap { $0 }

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                if let exercise = MidChest().getRandomExercise() {
                    day1Exercises.append(exercise)
                }
            case "Back":
                if let exercise = Lats().getRandomExercise() {
                    day1Exercises.append(exercise)
                }
            case "Shoulders":
                if let exercise = SideDelts().getRandomExercise() {
                    day1Exercises.append(exercise)
                }
            case "Biceps":
                if let exercise = Brachialis().getRandomExercise() {
                    day1Exercises.append(exercise)
                }
            case "Quads":
                if let exercise = RecQuads().getRandomExercise() {
                    day2Exercises.append(exercise)
                }
            case "Hamstrings":
                if let exercise = Hamstrings().getRandomExercise() {
                    day2Exercises.append(exercise)
                }
            case "Glutes":
                if let exercise = Glutes().getRandomExercise() {
                    day2Exercises.append(exercise)
                }
            case "Triceps":
                if let exercise = ShortMedialHead().getRandomExercise() {
                    day2Exercises.append(exercise)
                }
            default:
                break
            }
        }

        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
    }
}

struct ExerciseDetail: View {
    var exercise: Exercise // Replace `Exercise` with your actual model type
    var bodyPart: String
    var body: some View {
        VStack {
            Text(exercise.name)
                .font(.system(size: 45))
                .multilineTextAlignment(.center)
                .bold()
                .foregroundColor(.gray)
                .kerning(2)
                .shadow(color: .gray, radius: 3, x: 3, y: 8)
            Text(bodyPart)
                .font(.system(size: 45))
                .multilineTextAlignment(.center)
                .bold()
                .foregroundColor(.gray)
                .kerning(2)
                .shadow(color: .gray, radius: 3, x: 3, y: 8)
        }
    }
}

struct TwoDay_Previews: PreviewProvider {
    static var previews: some View {
        TwoDay(selectedEmphasis: "Shoulders")
    }
}
