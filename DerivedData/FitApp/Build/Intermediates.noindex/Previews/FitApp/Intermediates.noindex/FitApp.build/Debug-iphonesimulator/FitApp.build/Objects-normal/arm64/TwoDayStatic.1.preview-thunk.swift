@_private(sourceFile: "TwoDayStatic.swift") import FitApp
import SwiftUI
import SwiftUI

extension TwoDayStatic_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDayStatic.swift", line: 67)
        TwoDayStatic(
            selectedEmphasis: __designTimeString("#75579.[2].[0].property.[0].[0].arg[0].value", fallback: "Chest"),
            day1Exercises: [
                Exercise(name: __designTimeString("#75579.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Incline Smith Machine Press"), videoURL: URL(string: __designTimeString("#75579.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0]", fallback: "file:///path/to/your/video1.mp4"))!, bodyPart: __designTimeString("#75579.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value", fallback: "Hamstrings")),
                Exercise(name: __designTimeString("#75579.[2].[0].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Flat Bench Press"), videoURL: URL(string: __designTimeString("#75579.[2].[0].property.[0].[0].arg[1].value.[1].arg[1].value.[0]", fallback: "file:///path/to/your/video2.mp4"))!, bodyPart: __designTimeString("#75579.[2].[0].property.[0].[0].arg[1].value.[1].arg[2].value", fallback: "Hamstrings"))
            ],
            day2Exercises: [
                Exercise(name: __designTimeString("#75579.[2].[0].property.[0].[0].arg[2].value.[0].arg[0].value", fallback: "Squats"), videoURL: URL(string: __designTimeString("#75579.[2].[0].property.[0].[0].arg[2].value.[0].arg[1].value.[0]", fallback: "file:///path/to/your/video3.mp4"))!, bodyPart: __designTimeString("#75579.[2].[0].property.[0].[0].arg[2].value.[0].arg[2].value", fallback: "Hamstrings")),
                Exercise(name: __designTimeString("#75579.[2].[0].property.[0].[0].arg[2].value.[1].arg[0].value", fallback: "Deadlifts"), videoURL: URL(string: __designTimeString("#75579.[2].[0].property.[0].[0].arg[2].value.[1].arg[1].value.[0]", fallback: "file:///path/to/your/video4.mp4"))!, bodyPart: __designTimeString("#75579.[2].[0].property.[0].[0].arg[2].value.[1].arg[2].value", fallback: "Hamstrings"))
            ]
        )
    
#sourceLocation()
    }
}

extension TwoDayStatic {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/nicolas/app/FitApp/FitApp/TwoDayStatic.swift", line: 16)
            VStack {
                VStack {
                    VStack(spacing: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 70)) {
                        Text(__designTimeString("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Plan"))
                            .font(.system(size: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 45)))
                            .bold()
                            .foregroundColor(.gray)
                            .kerning(__designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 2))
                            .shadow(color: .gray, radius: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 3), x: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[2].value", fallback: 3), y: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[3].value", fallback: 8))
                        Text(__designTimeString("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Day 1"))
                            .font(.system(size: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                            .bold()
                            .foregroundColor(Color.blue.opacity(__designTimeFloat("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                            .kerning(__designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[3].arg[0].value", fallback: 2))
                            .shadow(color: .gray, radius: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[3].value", fallback: 6))
                    }
                    VStack(spacing: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: 12)) {
                        ForEach(day1Exercises, id: \.name) { exercise in
                            Text(exercise.name)
                                .font(.system(size: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                .bold()
                                .foregroundColor(Color.blue.opacity(__designTimeFloat("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                .kerning(__designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                        }
                    }
                    Text(__designTimeString("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Day 2"))
                        .font(.system(size: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 30)))
                        .bold()
                        .foregroundColor(Color.blue.opacity(__designTimeFloat("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.42)))
                        .kerning(__designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[3].arg[0].value", fallback: 2))
                        .shadow(color: .gray, radius: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[1].value", fallback: 6), x: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[2].value", fallback: 1), y: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[4].arg[3].value", fallback: 6))
                        .padding(.top, __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[5].arg[1].value", fallback: 40))
                    
                    VStack(spacing: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: 12)) {
                        ForEach(day2Exercises, id: \.name) { exercise in
                            Text(exercise.name)
                                .font(.system(size: __designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                .bold()
                                .foregroundColor(Color.blue.opacity(__designTimeFloat("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.38)))
                                .kerning(__designTimeInteger("#75579.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 2))
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(__designTimeFloat("#75579.[1].[3].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)))
            }
    
#sourceLocation()
    }
}

import struct FitApp.TwoDayStatic
import struct FitApp.TwoDayStatic_Previews

