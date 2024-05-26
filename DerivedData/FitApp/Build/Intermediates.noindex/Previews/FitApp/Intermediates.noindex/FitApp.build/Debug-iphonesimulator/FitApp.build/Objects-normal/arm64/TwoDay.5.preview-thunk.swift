@_private(sourceFile: "TwoDay.swift") import FitApp
import SwiftUI
import SwiftUI

extension TwoDay_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 682)
        @StateObject var exerciseModel = ExerciseModel()
        __designTimeSelection(TwoDay(selectedEmphasis: __designTimeString("#51758.[3].[0].property.[0].[1].arg[0].value", fallback: "Chest"), selectedDays: __designTimeString("#51758.[3].[0].property.[0].[1].arg[1].value", fallback: "Five"), exerciseModel: __designTimeSelection(exerciseModel, "#51758.[3].[0].property.[0].[1].arg[2].value")), "#51758.[3].[0].property.[0].[1]")
    
#sourceLocation()
    }
}

extension ExerciseDetail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 661)
        __designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value"))
                .font(.system(size: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                .multilineTextAlignment(.center)
                .bold()
                .foregroundColor(.gray)
                .kerning(__designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[4].arg[0].value", fallback: 2))
                .shadow(color: .gray, radius: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[5].arg[1].value", fallback: 3), x: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[5].arg[2].value", fallback: 3), y: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[0].modifier[5].arg[3].value", fallback: 8)), "#51758.[2].[2].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Text(__designTimeSelection(bodyPart, "#51758.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value"))
                .font(.system(size: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                .multilineTextAlignment(.center)
                .bold()
                .foregroundColor(.gray)
                .kerning(__designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[4].arg[0].value", fallback: 2))
                .shadow(color: .gray, radius: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[5].arg[1].value", fallback: 3), x: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[5].arg[2].value", fallback: 3), y: __designTimeInteger("#51758.[2].[2].property.[0].[0].arg[0].value.[1].modifier[5].arg[3].value", fallback: 8)), "#51758.[2].[2].property.[0].[0].arg[0].value.[1]")
        }, "#51758.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

extension TwoDay {
    @_dynamicReplacement(for: initializeExercises5()) private func __preview__initializeExercises5() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 509)
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            __designTimeSelection(UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[13].[1].value.[0].modifier[0].arg[0].value", fallback: "UpperChest"), excludeLast: __designTimeBoolean("#51758.[1].[13].[1].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[1].value.[0]"),
            __designTimeSelection(MidChest().getRandomExercise(for: __designTimeString("#51758.[1].[13].[1].value.[1].modifier[0].arg[0].value", fallback: "MidChest"), excludeLast: __designTimeBoolean("#51758.[1].[13].[1].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[1].value.[1]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[13].[1].value.modifier[0].arg[0].value.[0]") }

        var day2Exercises = [
            __designTimeSelection(UpperBack().getRandomExercise(for: __designTimeString("#51758.[1].[13].[2].value.[0].modifier[0].arg[0].value", fallback: "UpperBack"), excludeLast: __designTimeBoolean("#51758.[1].[13].[2].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[2].value.[0]"),
            __designTimeSelection(Lats().getRandomExercise(for: __designTimeString("#51758.[1].[13].[2].value.[1].modifier[0].arg[0].value", fallback: "Lats"), excludeLast: __designTimeBoolean("#51758.[1].[13].[2].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[2].value.[1]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[13].[2].value.modifier[0].arg[0].value.[0]") }
        var day3Exercises = [
            __designTimeSelection(Biceps().getRandomExercise(for: __designTimeString("#51758.[1].[13].[3].value.[0].modifier[0].arg[0].value", fallback: "Biceps"), excludeLast: __designTimeBoolean("#51758.[1].[13].[3].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[3].value.[0]"),
            __designTimeSelection(Brachialis().getRandomExercise(for: __designTimeString("#51758.[1].[13].[3].value.[1].modifier[0].arg[0].value", fallback: "Brachialis"), excludeLast: __designTimeBoolean("#51758.[1].[13].[3].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[3].value.[1]"),
            __designTimeSelection(LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[13].[3].value.[2].modifier[0].arg[0].value", fallback: "LongHead"), excludeLast: __designTimeBoolean("#51758.[1].[13].[3].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[3].value.[2]"),
            __designTimeSelection(ShortMedialHead().getRandomExercise(for: __designTimeString("#51758.[1].[13].[3].value.[3].modifier[0].arg[0].value", fallback: "ShortMedialHead"), excludeLast: __designTimeBoolean("#51758.[1].[13].[3].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[3].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[13].[3].value.modifier[0].arg[0].value.[0]") }
        var day4Exercises = [
            __designTimeSelection(FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[13].[4].value.[0].modifier[0].arg[0].value", fallback: "FrontDelts"), excludeLast: __designTimeBoolean("#51758.[1].[13].[4].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[4].value.[0]"),
            __designTimeSelection(SideDelts().getRandomExercise(for: __designTimeString("#51758.[1].[13].[4].value.[1].modifier[0].arg[0].value", fallback: "SideDelts"), excludeLast: __designTimeBoolean("#51758.[1].[13].[4].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[4].value.[1]"),
            __designTimeSelection(RearDelts().getRandomExercise(for: __designTimeString("#51758.[1].[13].[4].value.[2].modifier[0].arg[0].value", fallback: "RearDelts"), excludeLast: __designTimeBoolean("#51758.[1].[13].[4].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[4].value.[2]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[13].[4].value.modifier[0].arg[0].value.[0]") }
        var day5Exercises = [
            __designTimeSelection(VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[13].[5].value.[0].modifier[0].arg[0].value", fallback: "VastusQuads"), excludeLast: __designTimeBoolean("#51758.[1].[13].[5].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[5].value.[0]"),
            __designTimeSelection(RecQuads().getRandomExercise(for: __designTimeString("#51758.[1].[13].[5].value.[1].modifier[0].arg[0].value", fallback: "RecQuads"), excludeLast: __designTimeBoolean("#51758.[1].[13].[5].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[5].value.[1]"),
            __designTimeSelection(Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[13].[5].value.[2].modifier[0].arg[0].value", fallback: "Hamstrings"), excludeLast: __designTimeBoolean("#51758.[1].[13].[5].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[5].value.[2]"),
            __designTimeSelection(Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[13].[5].value.[3].modifier[0].arg[0].value", fallback: "Glutes"), excludeLast: __designTimeBoolean("#51758.[1].[13].[5].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[13].[5].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[13].[5].value.modifier[0].arg[0].value.[0]") }

        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day1Exercises, "#51758.[1].[13].[6].modifier[0].arg[0].value")), "#51758.[1].[13].[6]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day2Exercises, "#51758.[1].[13].[7].modifier[0].arg[0].value")), "#51758.[1].[13].[7]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day3Exercises, "#51758.[1].[13].[8].modifier[0].arg[0].value")), "#51758.[1].[13].[8]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day4Exercises, "#51758.[1].[13].[9].modifier[0].arg[0].value")), "#51758.[1].[13].[9]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day5Exercises, "#51758.[1].[13].[10].modifier[0].arg[0].value")), "#51758.[1].[13].[10]")

        var exercise1: Exercise?
        repeat {
            exercise1 = UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[13].[12].[0].[0]", fallback: "UpperChest"), excludeLast: false)
        } while exercise1 != nil && selectedExercises.contains { $0.name == exercise1!.name }

        if let uniqueExercise = exercise1 {
            __designTimeSelection(day1Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[13].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[13].[0].[0]")
            __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[13].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[13].[0].[1]")
        }
        var exercise2: Exercise?
        repeat {
            exercise2 = Lats().getRandomExercise(for: __designTimeString("#51758.[1].[13].[15].[0].[0]", fallback: "Lats"), excludeLast: false)
        } while exercise2 != nil && selectedExercises.contains { $0.name == exercise2!.name }

        if let uniqueExercise = exercise2 {
            __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[16].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[16].[0].[0]")
            __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[16].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[16].[0].[1]")
        }
        
        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = MidChest().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[0].[1].[0].[0]", fallback: "UpperChest"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[0].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[0].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[0].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[0].[2].[0].[1]")
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = UpperBack().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[1].[1].[0].[0]", fallback: "Lats"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[1].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[1].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[1].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[1].[2].[0].[1]")
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[2].[1].[0].[0]", fallback: "Shoulders"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day4Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[2].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[2].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[2].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[2].[2].[0].[1]")
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Biceps().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[3].[1].[0].[0]", fallback: "Biceps"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[3].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[3].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[3].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[3].[2].[0].[1]")
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[4].[1].[0].[0]", fallback: "VastusQuads"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day5Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[4].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[4].[2].[0].[0]")
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[5].[1].[0].[0]", fallback: "Hamstrings"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day5Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[5].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[5].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[5].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[5].[2].[0].[1]")
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[6].[1].[0].[0]", fallback: "Glutes"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day5Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[6].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[6].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[6].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[6].[2].[0].[1]")
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[13].[17].[0].[0].[7].[1].[0].[0]", fallback: "LongHead"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[7].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[7].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[13].[17].[0].[0].[7].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[13].[17].[0].[0].[7].[2].[0].[1]")
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
    
#sourceLocation()
    }
}

extension TwoDay {
    @_dynamicReplacement(for: initializeExercises4()) private func __preview__initializeExercises4() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 386)
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            __designTimeSelection(UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[12].[1].value.[0].modifier[0].arg[0].value", fallback: "UpperChest"), excludeLast: __designTimeBoolean("#51758.[1].[12].[1].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[1].value.[0]"),
            __designTimeSelection(FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[12].[1].value.[1].modifier[0].arg[0].value", fallback: "FrontDelts"), excludeLast: __designTimeBoolean("#51758.[1].[12].[1].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[1].value.[1]"),
            __designTimeSelection(MidChest().getRandomExercise(for: __designTimeString("#51758.[1].[12].[1].value.[2].modifier[0].arg[0].value", fallback: "MidChest"), excludeLast: __designTimeBoolean("#51758.[1].[12].[1].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[1].value.[2]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[12].[1].value.modifier[0].arg[0].value.[0]") }

        var day2Exercises = [
            __designTimeSelection(UpperBack().getRandomExercise(for: __designTimeString("#51758.[1].[12].[2].value.[0].modifier[0].arg[0].value", fallback: "UpperBack"), excludeLast: __designTimeBoolean("#51758.[1].[12].[2].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[2].value.[0]"),
            __designTimeSelection(Lats().getRandomExercise(for: __designTimeString("#51758.[1].[12].[2].value.[1].modifier[0].arg[0].value", fallback: "Lats"), excludeLast: __designTimeBoolean("#51758.[1].[12].[2].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[2].value.[1]"),
            __designTimeSelection(SideDelts().getRandomExercise(for: __designTimeString("#51758.[1].[12].[2].value.[2].modifier[0].arg[0].value", fallback: "SideDelts"), excludeLast: __designTimeBoolean("#51758.[1].[12].[2].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[2].value.[2]"),
            __designTimeSelection(RearDelts().getRandomExercise(for: __designTimeString("#51758.[1].[12].[2].value.[3].modifier[0].arg[0].value", fallback: "RearDelts"), excludeLast: __designTimeBoolean("#51758.[1].[12].[2].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[2].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[12].[2].value.modifier[0].arg[0].value.[0]") }
        var day3Exercises = [
            __designTimeSelection(Biceps().getRandomExercise(for: __designTimeString("#51758.[1].[12].[3].value.[0].modifier[0].arg[0].value", fallback: "Biceps"), excludeLast: __designTimeBoolean("#51758.[1].[12].[3].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[3].value.[0]"),
            __designTimeSelection(Brachialis().getRandomExercise(for: __designTimeString("#51758.[1].[12].[3].value.[1].modifier[0].arg[0].value", fallback: "Brachialis"), excludeLast: __designTimeBoolean("#51758.[1].[12].[3].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[3].value.[1]"),
            __designTimeSelection(LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[12].[3].value.[2].modifier[0].arg[0].value", fallback: "LongHead"), excludeLast: __designTimeBoolean("#51758.[1].[12].[3].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[3].value.[2]"),
            __designTimeSelection(ShortMedialHead().getRandomExercise(for: __designTimeString("#51758.[1].[12].[3].value.[3].modifier[0].arg[0].value", fallback: "ShortMedialHead"), excludeLast: __designTimeBoolean("#51758.[1].[12].[3].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[3].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[12].[3].value.modifier[0].arg[0].value.[0]") }
        var day4Exercises = [
            __designTimeSelection(VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[12].[4].value.[0].modifier[0].arg[0].value", fallback: "VastusQuads"), excludeLast: __designTimeBoolean("#51758.[1].[12].[4].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[4].value.[0]"),
            __designTimeSelection(RecQuads().getRandomExercise(for: __designTimeString("#51758.[1].[12].[4].value.[1].modifier[0].arg[0].value", fallback: "RecQuads"), excludeLast: __designTimeBoolean("#51758.[1].[12].[4].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[4].value.[1]"),
            __designTimeSelection(Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[12].[4].value.[2].modifier[0].arg[0].value", fallback: "Hamstrings"), excludeLast: __designTimeBoolean("#51758.[1].[12].[4].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[4].value.[2]"),
            __designTimeSelection(Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[12].[4].value.[3].modifier[0].arg[0].value", fallback: "Glutes"), excludeLast: __designTimeBoolean("#51758.[1].[12].[4].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[12].[4].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[12].[4].value.modifier[0].arg[0].value.[0]") }
        
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day1Exercises, "#51758.[1].[12].[5].modifier[0].arg[0].value")), "#51758.[1].[12].[5]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day2Exercises, "#51758.[1].[12].[6].modifier[0].arg[0].value")), "#51758.[1].[12].[6]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day3Exercises, "#51758.[1].[12].[7].modifier[0].arg[0].value")), "#51758.[1].[12].[7]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day4Exercises, "#51758.[1].[12].[8].modifier[0].arg[0].value")), "#51758.[1].[12].[8]")

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[0].[1].[0].[0]", fallback: "UpperChest"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[0].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[0].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[0].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[0].[2].[0].[1]")
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = Lats().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[1].[1].[0].[0]", fallback: "Lats"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[1].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[1].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[1].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[1].[2].[0].[1]")
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[2].[1].[0].[0]", fallback: "Shoulders"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[2].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[2].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[2].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[2].[2].[0].[1]")
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Biceps().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[3].[1].[0].[0]", fallback: "Brachialis"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[3].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[3].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[3].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[3].[2].[0].[1]")
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[4].[1].[0].[0]", fallback: "VastusQuads"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day4Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[4].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[4].[2].[0].[0]")
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[5].[1].[0].[0]", fallback: "Hamstrings"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day4Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[5].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[5].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[5].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[5].[2].[0].[1]")
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[6].[1].[0].[0]", fallback: "Glutes"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day4Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[6].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[6].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[6].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[6].[2].[0].[1]")
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[12].[9].[0].[0].[7].[1].[0].[0]", fallback: "LongHead"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[7].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[7].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[12].[9].[0].[0].[7].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[12].[9].[0].[0].[7].[2].[0].[1]")
                }
            default:
                break
            }
        }

        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
        randomExercisesDay3 = day3Exercises
        randomExercisesDay4 = day4Exercises
    
#sourceLocation()
    }
}

extension TwoDay {
    @_dynamicReplacement(for: initializeExercises3()) private func __preview__initializeExercises3() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 269)
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            __designTimeSelection(UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[11].[1].value.[0].modifier[0].arg[0].value", fallback: "UpperChest"), excludeLast: __designTimeBoolean("#51758.[1].[11].[1].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[1].value.[0]"),
            __designTimeSelection(UpperBack().getRandomExercise(for: __designTimeString("#51758.[1].[11].[1].value.[1].modifier[0].arg[0].value", fallback: "UpperBack"), excludeLast: __designTimeBoolean("#51758.[1].[11].[1].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[1].value.[1]"),
            __designTimeSelection(Lats().getRandomExercise(for: __designTimeString("#51758.[1].[11].[1].value.[2].modifier[0].arg[0].value", fallback: "Lats"), excludeLast: __designTimeBoolean("#51758.[1].[11].[1].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[1].value.[2]"),
            __designTimeSelection(SideDelts().getRandomExercise(for: __designTimeString("#51758.[1].[11].[1].value.[3].modifier[0].arg[0].value", fallback: "SideDelts"), excludeLast: __designTimeBoolean("#51758.[1].[11].[1].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[1].value.[3]"),
            __designTimeSelection(MidChest().getRandomExercise(for: __designTimeString("#51758.[1].[11].[1].value.[4].modifier[0].arg[0].value", fallback: "MidChest"), excludeLast: __designTimeBoolean("#51758.[1].[11].[1].value.[4].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[1].value.[4]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[11].[1].value.modifier[0].arg[0].value.[0]") }

        var day2Exercises = [
            __designTimeSelection(Biceps().getRandomExercise(for: __designTimeString("#51758.[1].[11].[2].value.[0].modifier[0].arg[0].value", fallback: "Biceps"), excludeLast: __designTimeBoolean("#51758.[1].[11].[2].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[2].value.[0]"),
            __designTimeSelection(ShortMedialHead().getRandomExercise(for: __designTimeString("#51758.[1].[11].[2].value.[1].modifier[0].arg[0].value", fallback: "ShortMedialHead"), excludeLast: __designTimeBoolean("#51758.[1].[11].[2].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[2].value.[1]"),
            __designTimeSelection(FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[11].[2].value.[2].modifier[0].arg[0].value", fallback: "SideDelts"), excludeLast: __designTimeBoolean("#51758.[1].[11].[2].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[2].value.[2]"),
            __designTimeSelection(LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[11].[2].value.[3].modifier[0].arg[0].value", fallback: "LongHead"), excludeLast: __designTimeBoolean("#51758.[1].[11].[2].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[2].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[11].[2].value.modifier[0].arg[0].value.[0]") }
        var day3Exercises = [
            __designTimeSelection(VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[11].[3].value.[0].modifier[0].arg[0].value", fallback: "VastusQuads"), excludeLast: __designTimeBoolean("#51758.[1].[11].[3].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[3].value.[0]"),
            __designTimeSelection(RecQuads().getRandomExercise(for: __designTimeString("#51758.[1].[11].[3].value.[1].modifier[0].arg[0].value", fallback: "RecQuads"), excludeLast: __designTimeBoolean("#51758.[1].[11].[3].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[3].value.[1]"),
            __designTimeSelection(Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[11].[3].value.[2].modifier[0].arg[0].value", fallback: "Hamstrings"), excludeLast: __designTimeBoolean("#51758.[1].[11].[3].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[3].value.[2]"),
            __designTimeSelection(Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[11].[3].value.[3].modifier[0].arg[0].value", fallback: "Glutes"), excludeLast: __designTimeBoolean("#51758.[1].[11].[3].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[11].[3].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[11].[3].value.modifier[0].arg[0].value.[0]") }
        
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day1Exercises, "#51758.[1].[11].[4].modifier[0].arg[0].value")), "#51758.[1].[11].[4]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day2Exercises, "#51758.[1].[11].[5].modifier[0].arg[0].value")), "#51758.[1].[11].[5]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day3Exercises, "#51758.[1].[11].[6].modifier[0].arg[0].value")), "#51758.[1].[11].[6]")

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                var exercise: Exercise?
                repeat {
                    exercise = UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[0].[1].[0].[0]", fallback: "UpperChest"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[0].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[0].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[0].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[0].[2].[0].[1]")
                }
            case "Back":
                var exercise: Exercise?
                repeat {
                    exercise = Lats().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[1].[1].[0].[0]", fallback: "Lats"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[1].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[1].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[1].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[1].[2].[0].[1]")
                }
            case "Shoulders":
                var exercise: Exercise?
                repeat {
                    exercise = FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[2].[1].[0].[0]", fallback: "Shoulders"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[2].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[2].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[2].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[2].[2].[0].[1]")
                }
            case "Biceps":
                var exercise: Exercise?
                repeat {
                    exercise = Brachialis().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[3].[1].[0].[0]", fallback: "Brachialis"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[3].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[3].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[3].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[3].[2].[0].[1]")
                }
            case "Quads":
                var exercise: Exercise?
                repeat {
                    exercise = VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[4].[1].[0].[0]", fallback: "VastusQuads"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[4].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[4].[2].[0].[0]")
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[5].[1].[0].[0]", fallback: "Hamstrings"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[5].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[5].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[5].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[5].[2].[0].[1]")
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[6].[1].[0].[0]", fallback: "Glutes"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day3Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[6].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[6].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[6].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[6].[2].[0].[1]")
                }
            case "Triceps":
                var exercise: Exercise?
                repeat {
                    exercise = LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[11].[7].[0].[0].[7].[1].[0].[0]", fallback: "LongHead"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[7].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[7].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[11].[7].[0].[0].[7].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[11].[7].[0].[0].[7].[2].[0].[1]")
                }
            default:
                break
            }
        }

        randomExercisesDay1 = day1Exercises
        randomExercisesDay2 = day2Exercises
        randomExercisesDay3 = day3Exercises
    
#sourceLocation()
    }
}

extension TwoDay {
    @_dynamicReplacement(for: initializeExercises2()) private func __preview__initializeExercises2() {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 196)
        var selectedExercises: Set<Exercise> = []
        var day1Exercises = [
            __designTimeSelection(UpperChest().getRandomExercise(for: __designTimeString("#51758.[1].[10].[1].value.[0].modifier[0].arg[0].value", fallback: "UpperChest"), excludeLast: __designTimeBoolean("#51758.[1].[10].[1].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[1].value.[0]"),
            __designTimeSelection(UpperBack().getRandomExercise(for: __designTimeString("#51758.[1].[10].[1].value.[1].modifier[0].arg[0].value", fallback: "UpperBack"), excludeLast: __designTimeBoolean("#51758.[1].[10].[1].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[1].value.[1]"),
            __designTimeSelection(FrontDelts().getRandomExercise(for: __designTimeString("#51758.[1].[10].[1].value.[2].modifier[0].arg[0].value", fallback: "FrontDelts"), excludeLast: __designTimeBoolean("#51758.[1].[10].[1].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[1].value.[2]"),
            __designTimeSelection(Biceps().getRandomExercise(for: __designTimeString("#51758.[1].[10].[1].value.[3].modifier[0].arg[0].value", fallback: "Biceps"), excludeLast: __designTimeBoolean("#51758.[1].[10].[1].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[1].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[10].[1].value.modifier[0].arg[0].value.[0]") }

        var day2Exercises = [
            __designTimeSelection(VastusQuads().getRandomExercise(for: __designTimeString("#51758.[1].[10].[2].value.[0].modifier[0].arg[0].value", fallback: "VastusQuads"), excludeLast: __designTimeBoolean("#51758.[1].[10].[2].value.[0].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[2].value.[0]"),
            __designTimeSelection(Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[10].[2].value.[1].modifier[0].arg[0].value", fallback: "Hamstrings"), excludeLast: __designTimeBoolean("#51758.[1].[10].[2].value.[1].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[2].value.[1]"),
            __designTimeSelection(Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[10].[2].value.[2].modifier[0].arg[0].value", fallback: "Glutes"), excludeLast: __designTimeBoolean("#51758.[1].[10].[2].value.[2].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[2].value.[2]"),
            __designTimeSelection(LongHead().getRandomExercise(for: __designTimeString("#51758.[1].[10].[2].value.[3].modifier[0].arg[0].value", fallback: "LongHead"), excludeLast: __designTimeBoolean("#51758.[1].[10].[2].value.[3].modifier[0].arg[1].value", fallback: false)), "#51758.[1].[10].[2].value.[3]")
        ].compactMap { __designTimeSelection($0, "#51758.[1].[10].[2].value.modifier[0].arg[0].value.[0]") }
        
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day1Exercises, "#51758.[1].[10].[3].modifier[0].arg[0].value")), "#51758.[1].[10].[3]")
        __designTimeSelection(selectedExercises.formUnion(__designTimeSelection(day2Exercises, "#51758.[1].[10].[4].modifier[0].arg[0].value")), "#51758.[1].[10].[4]")

        if let emphasis = selectedEmphasis {
            switch emphasis {
            case "Chest":
                if let exercise = MidChest().getRandomExercise(for: "MidChest", excludeLast: false) {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(exercise, "#51758.[1].[10].[5].[0].[0].[0].[0].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[0].[0].[0].[0]")
                }
            case "Back":
                if let exercise = Lats().getRandomExercise(for: "Lats", excludeLast: false) {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(exercise, "#51758.[1].[10].[5].[0].[0].[1].[0].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[1].[0].[0].[0]")
                }
            case "Shoulders":
                if let exercise = SideDelts().getRandomExercise(for: "Shoulders", excludeLast: false) {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(exercise, "#51758.[1].[10].[5].[0].[0].[2].[0].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[2].[0].[0].[0]")
                }
            case "Biceps":
                if let exercise = Brachialis().getRandomExercise(for: "Brachialis", excludeLast: false) {
                    __designTimeSelection(day1Exercises.append(__designTimeSelection(exercise, "#51758.[1].[10].[5].[0].[0].[3].[0].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[3].[0].[0].[0]")
                }
            case "Quads":
                if let exercise = RecQuads().getRandomExercise(for: "RecQuads", excludeLast: false) {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(exercise, "#51758.[1].[10].[5].[0].[0].[4].[0].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[4].[0].[0].[0]")
                }
            case "Hamstrings":
                var exercise: Exercise?
                repeat {
                    exercise = Hamstrings().getRandomExercise(for: __designTimeString("#51758.[1].[10].[5].[0].[0].[5].[1].[0].[0]", fallback: "Hamstrings"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[10].[5].[0].[0].[5].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[5].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[10].[5].[0].[0].[5].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[5].[2].[0].[1]")
                }
            case "Glutes":
                var exercise: Exercise?
                repeat {
                    exercise = Glutes().getRandomExercise(for: __designTimeString("#51758.[1].[10].[5].[0].[0].[6].[1].[0].[0]", fallback: "Glutes"), excludeLast: false)
                } while exercise != nil && selectedExercises.contains { $0.name == exercise!.name }

                if let uniqueExercise = exercise {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(uniqueExercise, "#51758.[1].[10].[5].[0].[0].[6].[2].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[6].[2].[0].[0]")
                    __designTimeSelection(selectedExercises.insert(__designTimeSelection(uniqueExercise, "#51758.[1].[10].[5].[0].[0].[6].[2].[0].[1].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[6].[2].[0].[1]")
                }
            case "Triceps":
                if let exercise = ShortMedialHead().getRandomExercise(for: "ShortMedialHead", excludeLast: false) {
                    __designTimeSelection(day2Exercises.append(__designTimeSelection(exercise, "#51758.[1].[10].[5].[0].[0].[7].[0].[0].[0].modifier[0].arg[0].value")), "#51758.[1].[10].[5].[0].[0].[7].[0].[0].[0]")
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
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDay.swift", line: 21)
        __designTimeSelection(NavigationView {
            __designTimeSelection(ScrollView {
                __designTimeSelection(VStack{
                    __designTimeSelection(VStack {
                        __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 70)) {
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Plan"))
                                .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                                .bold()
                                .foregroundColor(.gray)
                                .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 8))
                                .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[5].arg[1].value", fallback: 40)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Day 1"))
                                .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value"))
                                .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[3].value", fallback: 6)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1]")
                        }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 12)) {
                            __designTimeSelection(ForEach(__designTimeSelection(randomExercisesDay1, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value"), id: \.self) { exercise in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetail(exercise: __designTimeSelection(exercise, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[0].value"), bodyPart: __designTimeSelection(exercise.bodyPart, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[1].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[0].value")) {
                                    __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"))
                                        .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                        .bold()
                                        .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value"))
                                        .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0]")
                            }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")
                        }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1]")

                        __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Day 2"))
                            .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                            .bold()
                            .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value"))
                            .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[3].arg[0].value", fallback: 2))
                            .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[3].value", fallback: 6))
                            .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].modifier[5].arg[1].value", fallback: 40)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2]")

                        __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: 12)) {
                            __designTimeSelection(ForEach(__designTimeSelection(randomExercisesDay2, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value"), id: \.self) { exercise in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetail(exercise: __designTimeSelection(exercise, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[0].value"), bodyPart: __designTimeSelection(exercise.bodyPart, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[1].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[0].value")) {
                                    __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"))
                                        .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                        .bold()
                                        .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value"))
                                        .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0]")
                            }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")
                        }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3]")
                        if selectedDays == "Three" || selectedDays == "Four" || selectedDays == "Five" || selectedDays == "Six" {
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].arg[0].value", fallback: "Day 3"))
                                .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[2].arg[0].value"))
                                .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0].modifier[5].arg[1].value", fallback: 40)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[0]")

                            __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[0].value", fallback: 12)) {
                                __designTimeSelection(ForEach(__designTimeSelection(randomExercisesDay3, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[0].value"), id: \.self) { exercise in
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetail(exercise: __designTimeSelection(exercise, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[0].value"), bodyPart: __designTimeSelection(exercise.bodyPart, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[1].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value")) {
                                        __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"))
                                            .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value"))
                                            .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                    }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0].arg[2].value.[0]")
                                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1].arg[1].value.[0]")
                            }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].[0].[1]")
                        }
                        if selectedDays == "Four" || selectedDays == "Five" || selectedDays == "Six" {
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].arg[0].value", fallback: "Day 4"))
                                .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[2].arg[0].value"))
                                .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0].modifier[5].arg[1].value", fallback: 40)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[0]")

                            __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[0].value", fallback: 12)) {
                                __designTimeSelection(ForEach(__designTimeSelection(randomExercisesDay4, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[0].value"), id: \.self) { exercise in
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetail(exercise: __designTimeSelection(exercise, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[0].value"), bodyPart: __designTimeSelection(exercise.bodyPart, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[1].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value")) {
                                        __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"))
                                            .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value"))
                                            .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                    }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0].arg[2].value.[0]")
                                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1].arg[1].value.[0]")
                            }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].[0].[1]")
                        }
                        if selectedDays == "Five" || selectedDays == "Six" {
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].arg[0].value", fallback: "Day 5"))
                                .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[2].arg[0].value"))
                                .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0].modifier[5].arg[1].value", fallback: 40)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[0]")

                            __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[0].value", fallback: 12)) {
                                __designTimeSelection(ForEach(__designTimeSelection(randomExercisesDay5, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[0].value"), id: \.self) { exercise in
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetail(exercise: __designTimeSelection(exercise, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[0].value"), bodyPart: __designTimeSelection(exercise.bodyPart, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[1].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value")) {
                                        __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"))
                                            .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value"))
                                            .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                    }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0].arg[2].value.[0]")
                                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1].arg[1].value.[0]")
                            }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].[0].[1]")
                        }
                        if selectedDays == "Six" {
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].arg[0].value", fallback: "Day 6"))
                                .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                                .bold()
                                .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[2].arg[0].value"))
                                .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[3].arg[0].value", fallback: 2))
                                .shadow(color: .gray, radius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[4].arg[3].value", fallback: 6))
                                .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0].modifier[5].arg[1].value", fallback: 40)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[0]")

                            __designTimeSelection(VStack(spacing: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[0].value", fallback: 12)) {
                                __designTimeSelection(ForEach(__designTimeSelection(randomExercisesDay6, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[0].value"), id: \.self) { exercise in
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetail(exercise: __designTimeSelection(exercise, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[0].value"), bodyPart: __designTimeSelection(exercise.bodyPart, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value.arg[1].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[0].value")) {
                                        __designTimeSelection(Text(__designTimeSelection(exercise.name, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value"))
                                            .font(.system(size: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                            .bold()
                                            .foregroundColor(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value"))
                                            .kerning(__designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                    }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0].arg[2].value.[0]")
                                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1].arg[1].value.[0]")
                            }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[7].[0].[1]")
                        }


                        __designTimeSelection(Button(action: {
                            // Update exercises for Nutrition
                            exerciseModel.day1Exercises = randomExercisesDay1
                            exerciseModel.day2Exercises = randomExercisesDay2
                            exerciseModel.day3Exercises = randomExercisesDay3
                            exerciseModel.day4Exercises = randomExercisesDay4
                            exerciseModel.day5Exercises = randomExercisesDay5
                        }) {
                            __designTimeSelection(Text(__designTimeString("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0].arg[0].value", fallback: "Update Plan"))
                                .foregroundColor(.black)
                                .padding()
                                .background(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: 10)).stroke(__designTimeSelection(Color.black, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value"), lineWidth: __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[1].value", fallback: 2)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0].modifier[2].arg[0].value"))
                                .padding(.top, __designTimeInteger("#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0].modifier[3].arg[1].value", fallback: 50)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8].arg[1].value.[0]")
                        }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[8]")
                    }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                }, "#51758.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(__designTimeSelection(Color.blue.opacity(__designTimeFloat("#51758.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)), "#51758.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#51758.[1].[9].property.[0].[0].arg[0].value.[0]")
        }
        .onAppear {
            if let selectedDays = selectedDays {
                switch selectedDays {
                case "Two":
                    __designTimeSelection(initializeExercises2(), "#51758.[1].[9].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[0].[0]")
                case "Three":
                    __designTimeSelection(initializeExercises3(), "#51758.[1].[9].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[1].[0]")
                case "Four":
                    __designTimeSelection(initializeExercises4(), "#51758.[1].[9].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[2].[0]")
                case "Five":
                    __designTimeSelection(initializeExercises5(), "#51758.[1].[9].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[3].[0]")
                default:
                    break
                }
            }
        }, "#51758.[1].[9].property.[0].[0]")

#sourceLocation()
    }
}

import struct FitApp.TwoDay
import struct FitApp.ExerciseDetail
import struct FitApp.TwoDay_Previews

