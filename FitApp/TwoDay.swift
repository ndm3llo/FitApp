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
                        if selectedDays == "Three" || selectedDays == "Four" || selectedDays == "Five" || selectedDays == "Six" {
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
                        if selectedDays == "Four" || selectedDays == "Five" || selectedDays == "Six"  {
                            Text("Day 4")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.blue.opacity(0.42))
                                .kerning(2)
                                .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                .padding(.top, 40)

                            VStack(spacing: 12) {
                                ForEach(randomExercisesDay4, id: \.self) { exercise in
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
                        if selectedDays == "Five" || selectedDays == "Six" {
                            Text("Day 5")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.blue.opacity(0.42))
                                .kerning(2)
                                .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                .padding(.top, 40)

                            VStack(spacing: 12) {
                                ForEach(randomExercisesDay5, id: \.self) { exercise in
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
                        if selectedDays == "Six" {
                            Text("Day 6")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(Color.blue.opacity(0.42))
                                .kerning(2)
                                .shadow(color: .gray, radius: 6, x: 1, y: 6)
                                .padding(.top, 40)

                            VStack(spacing: 12) {
                                ForEach(randomExercisesDay6, id: \.self) { exercise in
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
                            exerciseModel.day3Exercises = randomExercisesDay3
                            exerciseModel.day4Exercises = randomExercisesDay4
                            exerciseModel.day5Exercises = randomExercisesDay5
                            exerciseModel.day6Exercises = randomExercisesDay6
                        }) {
                            Text("Update Plan")
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
            if let selectedDays = selectedDays {
                switch selectedDays {
                case "Two":
                    initializeExercises2()
                case "Three":
                    initializeExercises3()
                case "Four":
                    initializeExercises4()
                case "Five":
                    initializeExercises5()
                case "Six":
                    initializeExercises6()
                default:
                    break
                }
            }
        }
}

    private func initializeExercises2() {
        var selectedExercises: Set<Exercise> = []
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
        
        selectedExercises.formUnion(day1Exercises)
        selectedExercises.formUnion(day2Exercises)

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
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
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
    private func initializeExercises3() {
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            UpperChest().getRandomExercise(),
            UpperBack().getRandomExercise(),
            Lats().getRandomExercise(),
            SideDelts().getRandomExercise(),
            MidChest().getRandomExercise()
        ].compactMap { $0 }

        var day2Exercises = [
            Biceps().getRandomExercise(),
            ShortMedialHead().getRandomExercise(),
            FrontDelts().getRandomExercise(),
            LongHead().getRandomExercise()
        ].compactMap { $0 }
        var day3Exercises = [
            VastusQuads().getRandomExercise(),
            RecQuads().getRandomExercise(),
            Hamstrings().getRandomExercise(),
            Glutes().getRandomExercise()
        ].compactMap { $0 }
        
        selectedExercises.formUnion(day1Exercises)
        selectedExercises.formUnion(day2Exercises)
        selectedExercises.formUnion(day3Exercises)

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = UpperChest().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day1Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = Lats().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day1Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Brachialis().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise()
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
    private func initializeExercises4() {
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            UpperChest().getRandomExercise(),
            FrontDelts().getRandomExercise(),
            MidChest().getRandomExercise()
        ].compactMap { $0 }

        var day2Exercises = [
            UpperBack().getRandomExercise(),
            Lats().getRandomExercise(),
            SideDelts().getRandomExercise(),
            RearDelts().getRandomExercise()
        ].compactMap { $0 }
        var day3Exercises = [
            Biceps().getRandomExercise(),
            Brachialis().getRandomExercise(),
            LongHead().getRandomExercise(),
            ShortMedialHead().getRandomExercise()
        ].compactMap { $0 }
        var day4Exercises = [
            VastusQuads().getRandomExercise(),
            RecQuads().getRandomExercise(),
            Hamstrings().getRandomExercise(),
            Glutes().getRandomExercise()
        ].compactMap { $0 }
        
        selectedExercises.formUnion(day1Exercises)
        selectedExercises.formUnion(day2Exercises)
        selectedExercises.formUnion(day3Exercises)
        selectedExercises.formUnion(day4Exercises)

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = UpperChest().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day1Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = Lats().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Biceps().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day4Exercises.append(uniqueExercise)
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day4Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day4Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            default:
                break
            }
        }

        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
        randomExercisesDay3 = day3Exercises
        randomExercisesDay4 = day4Exercises
    }
    private func initializeExercises5() {
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            UpperChest().getRandomExercise(),
            MidChest().getRandomExercise()
        ].compactMap { $0 }

        var day2Exercises = [
            UpperBack().getRandomExercise(),
            Lats().getRandomExercise()
        ].compactMap { $0 }
        var day3Exercises = [
            Biceps().getRandomExercise(),
            Brachialis().getRandomExercise(),
            LongHead().getRandomExercise(),
            ShortMedialHead().getRandomExercise()
        ].compactMap { $0 }
        var day4Exercises = [
            FrontDelts().getRandomExercise(),
            SideDelts().getRandomExercise(),
            RearDelts().getRandomExercise()
        ].compactMap { $0 }
        var day5Exercises = [
            VastusQuads().getRandomExercise(),
            RecQuads().getRandomExercise(),
            Hamstrings().getRandomExercise(),
            Glutes().getRandomExercise()
        ].compactMap { $0 }

        selectedExercises.formUnion(day1Exercises)
        selectedExercises.formUnion(day2Exercises)
        selectedExercises.formUnion(day3Exercises)
        selectedExercises.formUnion(day4Exercises)
        selectedExercises.formUnion(day5Exercises)

        var exercise1: Exercise?
        repeat {
            exercise1 = UpperChest().getRandomExercise()
        } while exercise1 != nil && selectedExercises.contains { $0.name == exercise1!.name }

        if let uniqueExercise = exercise1 {
            day1Exercises.append(uniqueExercise)
            selectedExercises.insert(uniqueExercise)
        }
        var exercise2: Exercise?
        repeat {
            exercise2 = Lats().getRandomExercise()
        } while exercise2 != nil && selectedExercises.contains { $0.name == exercise2!.name }

        if let uniqueExercise = exercise2 {
            day2Exercises.append(uniqueExercise)
            selectedExercises.insert(uniqueExercise)
        }
        
        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = MidChest().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day1Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = UpperBack().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day2Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day4Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Biceps().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day5Exercises.append(uniqueExercise)
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day5Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day5Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise()
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    day3Exercises.append(uniqueExercise)
                    selectedExercises.insert(uniqueExercise)
                }
            default:
                break
            }
        }
        
        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
        randomExercisesDay3 = day3Exercises
        randomExercisesDay4 = day4Exercises
        randomExercisesDay5 = day5Exercises
    }
    private func initializeExercises6() {
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            UpperChest().getRandomExercise(),
            MidChest().getRandomExercise()
        ].compactMap { $0 }
        selectedExercises.formUnion(day1Exercises)
        var exercise1: Exercise?
        repeat {
            exercise1 = UpperChest().getRandomExercise()
        } while exercise1 != nil && selectedExercises.contains { $0.name == exercise1!.name }

        if let uniqueExercise = exercise1 {
            day1Exercises.append(uniqueExercise)
            selectedExercises.insert(uniqueExercise)
        }
        var exercise2: Exercise?
        repeat {
            exercise2 = MidChest().getRandomExercise()
        } while exercise2 != nil && selectedExercises.contains { $0.name == exercise2!.name }

        if let uniqueExercise = exercise2 {
            day1Exercises.append(uniqueExercise)
            selectedExercises.insert(uniqueExercise)
        }
        var day2Exercises: [Exercise] = []
        var day3Exercises: [Exercise] = []
        var day4Exercises: [Exercise] = []
        var day5Exercises: [Exercise] = []
        var day6Exercises: [Exercise] = []

        if selectedEmphasis == "Shoulders" {
            day2Exercises = [
                FrontDelts().getRandomExercise(),
                SideDelts().getRandomExercise(),
                RearDelts().getRandomExercise()
            ].compactMap { $0 }
            day3Exercises = [
                UpperBack().getRandomExercise(),
                Lats().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.formUnion(day3Exercises)
            var exercise3: Exercise?
            repeat {
                exercise3 = Lats().getRandomExercise()
            } while exercise3 != nil && selectedExercises.contains { $0.name == exercise3!.name }

            if let uniqueExercise = exercise3 {
                day3Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise4: Exercise?
            repeat {
                exercise4 = UpperBack().getRandomExercise()
            } while exercise4 != nil && selectedExercises.contains { $0.name == exercise4!.name }

            if let uniqueExercise = exercise4 {
                day3Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day4Exercises = [
                Biceps().getRandomExercise(),
                Brachialis().getRandomExercise(),
                LongHead().getRandomExercise(),
                ShortMedialHead().getRandomExercise()
            ].compactMap { $0 }
            day5Exercises = [
                FrontDelts().getRandomExercise(),
                SideDelts().getRandomExercise(),
                RearDelts().getRandomExercise()
            ].compactMap { $0 }
            day6Exercises = [
                VastusQuads().getRandomExercise(),
                RecQuads().getRandomExercise(),
                Hamstrings().getRandomExercise(),
                Glutes().getRandomExercise()
            ].compactMap { $0 }
        }
        else if selectedEmphasis == "Back" {
            day2Exercises = [
                UpperBack().getRandomExercise(),
                Lats().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.formUnion(day2Exercises)
            var exercise3: Exercise?
            repeat {
                exercise3 = Lats().getRandomExercise()
            } while exercise3 != nil && selectedExercises.contains { $0.name == exercise3!.name }

            if let uniqueExercise = exercise3 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise4: Exercise?
            repeat {
                exercise4 = UpperBack().getRandomExercise()
            } while exercise4 != nil && selectedExercises.contains { $0.name == exercise4!.name }

            if let uniqueExercise = exercise4 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day3Exercises = [
                FrontDelts().getRandomExercise(),
                SideDelts().getRandomExercise(),
                RearDelts().getRandomExercise()
            ].compactMap { $0 }
            day4Exercises = [
                Biceps().getRandomExercise(),
                Brachialis().getRandomExercise(),
                LongHead().getRandomExercise(),
                ShortMedialHead().getRandomExercise()
            ].compactMap { $0 }
            day5Exercises = [
                UpperBack().getRandomExercise(),
                Lats().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.removeAll()
            selectedExercises.formUnion(day5Exercises)
            var exercise: Exercise?
            repeat {
                exercise = Lats().getRandomExercise()
            } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

            if let uniqueExercise = exercise {
                day5Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise5: Exercise?
            repeat {
                exercise5 = UpperBack().getRandomExercise()
            } while exercise5 != nil && selectedExercises.contains { $0.name == exercise5!.name }

            if let uniqueExercise = exercise5 {
                day5Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day6Exercises = [
                VastusQuads().getRandomExercise(),
                RecQuads().getRandomExercise(),
                Hamstrings().getRandomExercise(),
                Glutes().getRandomExercise()
            ].compactMap { $0 }
        }
        else if selectedEmphasis == "Biceps" || selectedEmphasis == "Triceps" {
            day2Exercises = [
                UpperBack().getRandomExercise(),
                Lats().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.formUnion(day2Exercises)
            var exercise3: Exercise?
            repeat {
                exercise3 = Lats().getRandomExercise()
            } while exercise3 != nil && selectedExercises.contains { $0.name == exercise3!.name }

            if let uniqueExercise = exercise3 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise4: Exercise?
            repeat {
                exercise4 = UpperBack().getRandomExercise()
            } while exercise4 != nil && selectedExercises.contains { $0.name == exercise4!.name }

            if let uniqueExercise = exercise4 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day3Exercises = [
                Biceps().getRandomExercise(),
                Brachialis().getRandomExercise(),
                LongHead().getRandomExercise(),
                ShortMedialHead().getRandomExercise()
            ].compactMap { $0 }
            day4Exercises = [
                FrontDelts().getRandomExercise(),
                SideDelts().getRandomExercise(),
                RearDelts().getRandomExercise()
            ].compactMap { $0 }
            day5Exercises = [
                VastusQuads().getRandomExercise(),
                RecQuads().getRandomExercise(),
                Hamstrings().getRandomExercise(),
                Glutes().getRandomExercise()
            ].compactMap { $0 }
            day6Exercises = [
                Biceps().getRandomExercise(),
                Brachialis().getRandomExercise(),
                LongHead().getRandomExercise(),
                ShortMedialHead().getRandomExercise()
            ].compactMap { $0 }
        }
        else if selectedEmphasis == "Chest" {
            day2Exercises = [
                UpperBack().getRandomExercise(),
                Lats().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.formUnion(day2Exercises)
            var exercise3: Exercise?
            repeat {
                exercise3 = Lats().getRandomExercise()
            } while exercise3 != nil && selectedExercises.contains { $0.name == exercise3!.name }

            if let uniqueExercise = exercise3 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise4: Exercise?
            repeat {
                exercise4 = UpperBack().getRandomExercise()
            } while exercise4 != nil && selectedExercises.contains { $0.name == exercise4!.name }

            if let uniqueExercise = exercise4 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day3Exercises = [
                Biceps().getRandomExercise(),
                Brachialis().getRandomExercise(),
                LongHead().getRandomExercise(),
                ShortMedialHead().getRandomExercise()
            ].compactMap { $0 }
            day4Exercises = [
                UpperChest().getRandomExercise(),
                MidChest().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.removeAll()
            selectedExercises.formUnion(day4Exercises)
            var exercise6: Exercise?
            repeat {
                exercise6 = UpperChest().getRandomExercise()
            } while exercise6 != nil && selectedExercises.contains { $0.name == exercise6!.name }

            if let uniqueExercise = exercise6 {
                day4Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise7: Exercise?
            repeat {
                exercise7 = MidChest().getRandomExercise()
            } while exercise7 != nil && selectedExercises.contains { $0.name == exercise7!.name }

            if let uniqueExercise = exercise7 {
                day4Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day5Exercises = [
                FrontDelts().getRandomExercise(),
                SideDelts().getRandomExercise(),
                RearDelts().getRandomExercise()
            ].compactMap { $0 }
            day6Exercises = [
                VastusQuads().getRandomExercise(),
                RecQuads().getRandomExercise(),
                Hamstrings().getRandomExercise(),
                Glutes().getRandomExercise()
            ].compactMap { $0 }
        }
        else {
            day2Exercises = [
                UpperBack().getRandomExercise(),
                Lats().getRandomExercise()
            ].compactMap { $0 }
            selectedExercises.formUnion(day2Exercises)
            var exercise3: Exercise?
            repeat {
                exercise3 = Lats().getRandomExercise()
            } while exercise3 != nil && selectedExercises.contains { $0.name == exercise3!.name }

            if let uniqueExercise = exercise3 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            var exercise4: Exercise?
            repeat {
                exercise4 = UpperBack().getRandomExercise()
            } while exercise4 != nil && selectedExercises.contains { $0.name == exercise4!.name }

            if let uniqueExercise = exercise4 {
                day2Exercises.append(uniqueExercise)
                selectedExercises.insert(uniqueExercise)
            }
            day3Exercises = [
                VastusQuads().getRandomExercise(),
                RecQuads().getRandomExercise(),
                Hamstrings().getRandomExercise(),
                Glutes().getRandomExercise()
            ].compactMap { $0 }
            day4Exercises = [
                Biceps().getRandomExercise(),
                Brachialis().getRandomExercise(),
                LongHead().getRandomExercise(),
                ShortMedialHead().getRandomExercise()
            ].compactMap { $0 }
            day5Exercises = [
                FrontDelts().getRandomExercise(),
                SideDelts().getRandomExercise(),
                RearDelts().getRandomExercise()
            ].compactMap { $0 }
            day6Exercises = [
                VastusQuads().getRandomExercise(),
                RecQuads().getRandomExercise(),
                Hamstrings().getRandomExercise(),
                Glutes().getRandomExercise()
            ].compactMap { $0 }
        }
        
        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
        randomExercisesDay3 = day3Exercises
        randomExercisesDay4 = day4Exercises
        randomExercisesDay5 = day5Exercises
        randomExercisesDay6 = day6Exercises
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
        TwoDay(selectedEmphasis: "Quads", selectedDays: "Six", exerciseModel: exerciseModel)
    }
}

