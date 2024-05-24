//
//  TwoDay.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/20/24.
//

import SwiftUI

struct TwoDay: View {
    var selectedEmphasis: String?
    var selectedDays: String?
    @State private var randomExercisesDay1: [Exercise] = []
    @State private var randomExercisesDay2: [Exercise] = []
    @State private var randomExercisesDay3: [Exercise] = []
    @State private var randomExercisesDay4: [Exercise] = []
    @State private var randomExercisesDay5: [Exercise] = []
    @State private var randomExercisesDay6: [Exercise] = []
    var exerciseModel: ExerciseModel
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    VStack {
                        VStack(spacing: 70) {
                            Text("Plan")
                                .font(.system(size: 45))
                                .bold()
                                .foregroundColor(.gray)
                                .kerning(2)
                                .shadow(color: .gray, radius: 3, x: 3, y: 8)
                                .padding(.top, 40)
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
                        if selectedDays == "3" {
                            Text("Day 3")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.blue.opacity(0.42))
                                .kerning(2)
                                .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                .padding(.top, 40)

                            VStack(spacing: 12) {
                                ForEach(randomExercisesDay3, id: \.self) { exercise in
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
                        Button(action: {
                            // Update exercises for Nutrition
                            exerciseModel.day1Exercises = randomExercisesDay1
                            exerciseModel.day2Exercises = randomExercisesDay2
                            exerciseModel.saveToUserDefaults()
                        }) {
                            Text("Update Nutrition")
                                .foregroundColor(.black)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                                .padding(.top, 50)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue.opacity(0.3))
        }
        .onAppear {
            if selectedDays == "2" {
                initializeExercises2()
            }
            if selectedDays == "3" {
                initializeExercises3()
            }
        }
    }

    private func initializeExercises2() {
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            UpperChest().getRandomExercise(for: "UpperChest", excludeLast: false),
            UpperBack().getRandomExercise(for: "UpperBack", excludeLast: false),
            FrontDelts().getRandomExercise(for: "FrontDelts", excludeLast: false),
            Biceps().getRandomExercise(for: "Biceps", excludeLast: false)
        ].compactMap { $0 }

        var day2Exercises = [
            VastusQuads().getRandomExercise(for: "VastusQuads", excludeLast: false),
            Hamstrings().getRandomExercise(for: "Hamstrings", excludeLast: false),
            Glutes().getRandomExercise(for: "Glutes", excludeLast: false),
            LongHead().getRandomExercise(for: "LongHead", excludeLast: false)
        ].compactMap { $0 }
        
        selectedExercises.formUnion(day1Exercises)
        selectedExercises.formUnion(day2Exercises)

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                if let exercise = MidChest().getRandomExercise(for: "MidChest", excludeLast: false) {
                    day1Exercises.append(exercise)
                }
            case "Back":
                if let exercise = Lats().getRandomExercise(for: "Lats", excludeLast: false) {
                    day1Exercises.append(exercise)
                }
            case "Shoulders":
                if let exercise = SideDelts().getRandomExercise(for: "Shoulders", excludeLast: false) {
                    day1Exercises.append(exercise)
                }
            case "Biceps":
                if let exercise = Brachialis().getRandomExercise(for: "Brachialis", excludeLast: false) {
                    day1Exercises.append(exercise)
                }
            case "Quads":
                if let exercise = RecQuads().getRandomExercise(for: "RecQuads", excludeLast: false) {
                    day2Exercises.append(exercise)
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise(for: "Hamstrings", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise(for: "Glutes", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Triceps":
                if let exercise = ShortMedialHead().getRandomExercise(for: "ShortMedialHead", excludeLast: false) {
                    day2Exercises.append(exercise)
                }
            default:
                break
            }
        }

        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
    }
    private func initializeExercises3() {
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            UpperChest().getRandomExercise(for: "UpperChest", excludeLast: false),
            UpperBack().getRandomExercise(for: "UpperBack", excludeLast: false),
            Lats().getRandomExercise(for: "Lats", excludeLast: false),
            SideDelts().getRandomExercise(for: "SideDelts", excludeLast: false),
            MidChest().getRandomExercise(for: "MidChest", excludeLast: false)
        ].compactMap { $0 }

        var day2Exercises = [
            Biceps().getRandomExercise(for: "Biceps", excludeLast: false),
            ShortMedialHead().getRandomExercise(for: "ShortMedialHead", excludeLast: false),
            FrontDelts().getRandomExercise(for: "SideDelts", excludeLast: false),
            LongHead().getRandomExercise(for: "LongHead", excludeLast: false)
        ].compactMap { $0 }
        var day3Exercises = [
            VastusQuads().getRandomExercise(for: "VastusQuads", excludeLast: false),
            RecQuads().getRandomExercise(for: "RecQuads", excludeLast: false),
            Hamstrings().getRandomExercise(for: "Hamstrings", excludeLast: false),
            Glutes().getRandomExercise(for: "Glutes", excludeLast: false),
        ].compactMap { $0 }
        
        selectedExercises.formUnion(day1Exercises)
        selectedExercises.formUnion(day2Exercises)
        selectedExercises.formUnion(day3Exercises)

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = UpperChest().getRandomExercise(for: "UpperChest", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day1Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = Lats().getRandomExercise(for: "Lats", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day1Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise(for: "Shoulders", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Brachialis().getRandomExercise(for: "Brachialis", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise(for: "VastusQuads", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise(for: "Hamstrings", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise(for: "Glutes", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise(for: "LongHead", excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            default:
                break
            }
        }

        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
        randomExercisesDay3 = day3Exercises
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
        @StateObject var exerciseModel = ExerciseModel()
        TwoDay(selectedEmphasis: "Shoulders", selectedDays: "3", exerciseModel: exerciseModel)
    }
}
