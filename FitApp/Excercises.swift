//
//  Excercises.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 5/16/24.
//

import Foundation

class MuscleGroup {
    let name: String
    var exercises: [Exercise]
    
    init(name: String, exercises: [Exercise]) {
        self.name = name
        self.exercises = exercises
    }
    func getRandomExercise() -> Exercise? {
            guard !exercises.isEmpty else { return nil }
            let randomIndex = Int.random(in: 0..<exercises.count)
            return exercises[randomIndex]
    }
}
class Exercise {
    let name: String
    let videoURL: URL
    
    init(name: String, videoURL: URL) {
           self.name = name
           self.videoURL = videoURL
    }
}

//Chest
class UpperChest: MuscleGroup {
    init() {
        super.init(name: "Chest", exercises: [
            Exercise(name: "Incline Dumbell Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Incline Smith Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Incline Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class MidChest: MuscleGroup {
    init() {
        super.init(name: "Chest", exercises: [
            Exercise(name: "Flat Dumbell Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Flat Smith Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Flat Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Pec Dec Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}

//Back
class Lats: MuscleGroup {
    init() {
        super.init(name: "Back", exercises: [
            Exercise(name: "Machine Lat Pull-Down", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Cable Lat Pull-Down", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Assisted Pull-Up", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Machine Lat Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Dumbell Lat Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class UpperBack: MuscleGroup {
    init() {
        super.init(name: "Back", exercises: [
            Exercise(name: "Dumbell Upper Back Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Machine Upper Back Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "T-Bar Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}

//Shoulders
class FrontDelts: MuscleGroup {
    init() {
        super.init(name: "Front Delts", exercises: [
            Exercise(name: "Dumbell Shoulder Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Machine Shoulder Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Smith Machine Shoulder Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class SideDelts: MuscleGroup {
    init() {
        super.init(name: "Side Delts", exercises: [
            Exercise(name: "Dumbell Lateral Raise", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Machine Lateral Raise", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Cable Lateral Raise", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class RearDelts: MuscleGroup {
    init() {
        super.init(name: "Rear Delts", exercises: [
            Exercise(name: "Dumbell Rear Delt Fly", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Reverse Pec Dec", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Cable Rear Delt Fly", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}

//Arms
class Biceps: MuscleGroup {
    init() {
        super.init(name: "Biceps", exercises: [
            Exercise(name: "Dumbell Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Cable Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Preacher Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Bar Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class Brachialis: MuscleGroup {
    init() {
        super.init(name: "Biceps", exercises: [
            Exercise(name: "Dumbell Hammer Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Cable Hammer Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class ShortMedialHead: MuscleGroup {
    init() {
        super.init(name: "Triceps", exercises: [
            Exercise(name: "Skull Crusher", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Overhead Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Close-Grip Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class LongHead: MuscleGroup {
    init() {
        super.init(name: "Triceps", exercises: [
            Exercise(name: "Long Rope Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Single Arm Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Cable Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}

//Legs
class VastusQuads: MuscleGroup {
    init() {
        super.init(name: "Quads", exercises: [
            Exercise(name: "Smith Machine Squat", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Leg Extensions", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Quad Hack Squat", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Quad Leg Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class RecQuads: MuscleGroup {
    init() {
        super.init(name: "Quads", exercises: [
            Exercise(name: "Leg Extensions", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class Glutes: MuscleGroup {
    init() {
        super.init(name: "Glutes", exercises: [
            Exercise(name: "Quad Hack Squat", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "RDL", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Glute Leg Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
class Hamstrings: MuscleGroup {
    init() {
        super.init(name: "Hamstrings", exercises: [
            Exercise(name: "Seated Hamstring Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "SDL", videoURL: URL(string: "file:///path/to/your/video.mp4")!),
            Exercise(name: "Laying Hamstring Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!)
        ])
    }
}
