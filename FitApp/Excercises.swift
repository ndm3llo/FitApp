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
    private var lastSelectedIndexes: [String: Int] = [:]

    init(name: String, exercises: [Exercise]) {
        self.name = name
        self.exercises = exercises
    }

    func getRandomExercise() -> Exercise? {
            guard !exercises.isEmpty else { return nil }
            return exercises.randomElement()
        }
}

class Exercise: Codable {
    let name: String
    let videoURL: URL
    let bodyPart: String
    init(name: String, videoURL: URL, bodyPart: String) {
           self.name = name
           self.videoURL = videoURL
        self.bodyPart = bodyPart
    }
    
}

//Chest
class UpperChest: MuscleGroup {
    init() {
        super.init(name: "UpperChest", exercises: [
            Exercise(name: "Incline Dumbell Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "UpperChest"),
            Exercise(name: "Incline Smith Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "UpperChest"),
            Exercise(name: "Incline Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "UpperChest")
        ])
    }
}
class MidChest: MuscleGroup {
    init() {
        super.init(name: "MidChest", exercises: [
            Exercise(name: "Flat Dumbell Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "MidChest"),
            Exercise(name: "Flat Smith Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "MidChest"),
            Exercise(name: "Flat Machine Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "MidChest"),
            Exercise(name: "Pec Dec Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "MidChest")
        ])
    }
}

//Back
class Lats: MuscleGroup {
    init() {
        super.init(name: "Lats", exercises: [
            Exercise(name: "Machine Lat Pull-Down", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Lats"),
            Exercise(name: "Cable Lat Pull-Down", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Lats"),
            Exercise(name: "Assisted Pull-Up", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Lats"),
            Exercise(name: "Machine Lat Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Lats"),
            Exercise(name: "Dumbell Lat Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Lats")
        ])
    }
}
class UpperBack: MuscleGroup {
    init() {
        super.init(name: "UpperBack", exercises: [
            Exercise(name: "Dumbell Upper Back Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "UpperBack"),
            Exercise(name: "Machine Upper Back Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "UpperBack"),
            Exercise(name: "T-Bar Row", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "UpperBack")
        ])
    }
}

//Shoulders
class FrontDelts: MuscleGroup {
    init() {
        super.init(name: "FrontDelts", exercises: [
            Exercise(name: "Dumbell Shoulder Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "FrontDelts"),
            Exercise(name: "Machine Shoulder Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "FrontDelts"),
            Exercise(name: "Smith Machine Shoulder Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "FrontDelts")
        ])
    }
}
class SideDelts: MuscleGroup {
    init() {
        super.init(name: "SideDelts", exercises: [
            Exercise(name: "Dumbell Lateral Raise", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "SideDelts"),
            Exercise(name: "Machine Lateral Raise", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "SideDelts"),
            Exercise(name: "Cable Lateral Raise", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "SideDelts")
        ])
    }
}
class RearDelts: MuscleGroup {
    init() {
        super.init(name: "RearDelts", exercises: [
            Exercise(name: "Dumbell Rear Delt Fly", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "RearDelts"),
            Exercise(name: "Reverse Pec Dec", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "RearDelts"),
            Exercise(name: "Cable Rear Delt Fly", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "RearDelts")
        ])
    }
}

//Arms
class Biceps: MuscleGroup {
    init() {
        super.init(name: "Biceps", exercises: [
            Exercise(name: "Dumbell Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Biceps"),
            Exercise(name: "Cable Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Biceps"),
            Exercise(name: "Preacher Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Biceps"),
            Exercise(name: "Bar Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Biceps")
        ])
    }
}
class Brachialis: MuscleGroup {
    init() {
        super.init(name: "Brachialis", exercises: [
            Exercise(name: "Dumbell Hammer Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Brachialis"),
            Exercise(name: "Cable Hammer Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Brachialis")
        ])
    }
}
class ShortMedialHead: MuscleGroup {
    init() {
        super.init(name: "ShortMedialHead", exercises: [
            Exercise(name: "Skull Crusher", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "ShortMedialHead"),
            Exercise(name: "Overhead Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "ShortMedialHead"),
            Exercise(name: "Close-Grip Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "ShortMedialHead")
        ])
    }
}
class LongHead: MuscleGroup {
    init() {
        super.init(name: "LongHead", exercises: [
            Exercise(name: "Long Rope Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "LongHead"),
            Exercise(name: "Single Arm Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "LongHead"),
            Exercise(name: "Cable Pushdown", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "LongHead")
        ])
    }
}

//Legs
class VastusQuads: MuscleGroup {
    init() {
        super.init(name: "VastusQuads", exercises: [
            Exercise(name: "Smith Machine Squat", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "VastusQuads"),
            Exercise(name: "Quad Machine Leg Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "VastusQuads"),
            Exercise(name: "Quad Hack Squat", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "VastusQuads"),
            Exercise(name: "Quad Leg Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "VastusQuads")
        ])
    }
}
class RecQuads: MuscleGroup {
    init() {
        super.init(name: "RecQuads", exercises: [
            Exercise(name: "Leg Extensions", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "RecQuads")
        ])
    }
}
class Glutes: MuscleGroup {
    init() {
        super.init(name: "Glutes", exercises: [
            Exercise(name: "Glute Hack Squat", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Glutes"),
            Exercise(name: "RDL", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Glutes"),
            Exercise(name: "Glute Leg Press", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Glutes")
        ])
    }
}
class Hamstrings: MuscleGroup {
    init() {
        super.init(name: "Hamstrings", exercises: [
            Exercise(name: "Seated Hamstring Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Hamstrings"),
            Exercise(name: "SDL", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Hamstrings"),
            Exercise(name: "Laying Hamstring Curl", videoURL: URL(string: "file:///path/to/your/video.mp4")!, bodyPart: "Hamstrings")
        ])
    }
}
extension Exercise: Hashable {
    func hash(into hasher: inout Hasher) {
        ObjectIdentifier(self).hash(into: &hasher)
    }

    static func ==(lhs: Exercise, rhs: Exercise) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
}
