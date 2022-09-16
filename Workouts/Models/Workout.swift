//
//  Workout.swift
//  Workouts
//
//  Created by Joseph Wil;liam DeWeese on 9/15/22.
//
import RealmSwift
import SwiftUI
import Foundation

class Workout {
    var id = UUID().uuidString
    var title = ""
    var objective = ""
    var type = ""
    
    init(title: String, objective: String, type: String){
        self.title = title
        self.objective = objective
        self.type = type
    }
    
    static var tempData: [Workout] = [
    Workout(title: "Chest/Triceps", objective: "Complete as Rx'd", type: "Strength"),
    Workout(title: "Bench Press", objective: "Complete as Rx'd, track lift weights and reps.", type: "Power"),
    Workout(title: "Dakota", objective: "Complete as Rx'd for time.", type: "HIIT"),
    Workout(title: "5 Mile run", objective: "3 mins slow run, 1 min sprint repeats for time.", type: "Cardio"),
    Workout(title: "Hike", objective: "5.2 mile River Gorge Trail", type: "Recover")
    ]
        
    }

