//
//  WorkoutCell.swift
//  Workouts
//
//  Created by Joseph Wil;liam DeWeese on 9/15/22.
//

import SwiftUI

struct WorkoutCell: View {
    
    var workoutArray: [Workout] = Workout.tempData
    func colorize(type: String) -> Color {
        switch type {
        case "HIIT":
            return .blue
        case "Strength":
            return .orange
        case "Cardio":
            return .cyan
        case "Power":
            return .green
        case "Recover":
            return .red
        default:
            return .gray
            
        }
    }
    
    var body: some View {
        ForEach(0..<workoutArray.count, id: \.self){ index in
            VStack(alignment: .leading) {
                Text(workoutArray[index].title)
                    .fontWeight(.bold)
                    .accessibilityAddTraits(.isHeader)
                    .foregroundColor(.primary)
                    .padding(3)
                
               
            
                Text(workoutArray[index].objective)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                HStack{
                    Spacer()
                    Text(workoutArray[index].type)
                        .foregroundColor(Color.primary)
                        .font(.caption2)
                        .padding(6)
                        .overlay(
                            Capsule().stroke(self.colorize(type:workoutArray[index].type), lineWidth: 4))
                }
            }
           
        }
    }
}
struct WorkoutCell_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCell()
    }
}
