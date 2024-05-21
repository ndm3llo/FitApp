@_private(sourceFile: "TwoDay.swift") import FitApp
import SwiftUI
import SwiftUI

extension TwoDay_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 160)
        TwoDay(selectedEmphasis: __designTimeString("#51758.[3].[0].property.[0].[0].arg[0].value", fallback: "Shoulders"))
    
#sourceLocation()
    }
}

extension ExerciseDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 139)
        VStack {
            Text(exercise.name)
                .font(.system(size: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                .multilineTextAlignment(.center)
                .bold()
                .foregroundColor(.gray)
                .kerning(__designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value", fallback: 2))
                .shadow(color: .gray, radius: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[5].arg[1].value", fallback: 3), x: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[5].arg[2].value", fallback: 3), y: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[5].arg[3].value", fallback: 8))
            Text(bodyPart)
                .font(.system(size: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                .multilineTextAlignment(.center)
                .bold()
                .foregroundColor(.gray)
                .kerning(__designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[4].arg[0].value", fallback: 2))
                .shadow(color: .gray, radius: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[5].arg[1].value", fallback: 3), x: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[5].arg[2].value", fallback: 3), y: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[5].arg[3].value", fallback: 8))
        }
    
#sourceLocation()
    }
}

extension TwoDay {
    @_dynamicReplacement(for: initializeExercises()) private func __preview__initializeExercises() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 77)
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
    
#sourceLocation()
    }
}

extension TwoDay {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 17)
        NavigationView {
            VStack {
                VStack {
                    VStack(spacing: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 70)) {
                        Text(__designTimeString("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Plan"))
                            .font(.system(size: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                            .bold()
                            .foregroundColor(.gray)
                            .kerning(__designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                            .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 8))
                        Text(__designTimeString("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Day 1"))
                            .font(.system(size: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                            .bold()
                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                            .kerning(__designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 2))
                            .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[3].value", fallback: 6))
                    }
                    VStack(spacing: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 12)) {
                        ForEach(randomExercisesDay1, id: \.self) { exercise in
                            NavigationLink(destination: ExerciseDetail(exercise: exercise, bodyPart: exercise.bodyPart)) {
                                Text(exercise.name)
                                    .font(.system(size: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                    .kerning(__designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                            }
                        }
                    }

                    Text(__designTimeString("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Day 2"))
                        .font(.system(size: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                        .bold()
                        .foregroundColor(Color.blue.opacity(__designTimeFloat("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                        .kerning(__designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[3].arg[0].value", fallback: 2))
                        .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[3].value", fallback: 6))
                        .padding(.top, __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[5].arg[1].value", fallback: 40))

                    VStack(spacing: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: 12)) {
                        ForEach(randomExercisesDay2, id: \.self) { exercise in
                            NavigationLink(destination: ExerciseDetail(exercise: exercise, bodyPart: exercise.bodyPart)) {
                                Text(exercise.name)
                                    .font(.system(size: __designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                    .bold()
                                    .foregroundColor(Color.blue.opacity(__designTimeFloat("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                    .kerning(__designTimeInteger("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(__designTimeFloat("#51758.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
            }
        }
        .onAppear {
            initializeExercises()
        }
    
#sourceLocation()
    }
}

import struct FitApp.TwoDay
import struct FitApp.ExerciseDetail
import struct FitApp.TwoDay_Previews

