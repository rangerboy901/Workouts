//
//  WorkoutListScreen.swift
//  Workouts
//
//  Created by Joseph Wil;liam DeWeese on 9/15/22.
//

import SwiftUI

struct WorkoutListScreen: View {
    
    
   @State var workoutArray: [Workout] = Workout.tempData
    @State  var isPresented = false
    
    
    var body: some View {
        
        NavigationView {
            List {
                WorkoutCell()
            }///#endOfList
            .listStyle(GroupedListStyle())
            .navigationTitle("Workouts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented=true
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.primary)
                            .padding()
                    }
                    .sheet(isPresented: $isPresented) {
                        AddWorkoutScreen()
                            .toolbar {
                                ToolbarItem(placement: .navigationBarLeading){
                                    Button("Cancel"){
                                        HapticManager.notification(type: .success)
                                        isPresented = false
                                    }
                                }
                            }
                    }
                }
                
                
            }//#endOfNavigationView
        }
    }
}
    //JWD:  Helper Method
    extension WorkoutListScreen {
        
        func openAlert() {
            let alertController = UIAlertController(title: "Add Workout", message: "Enter workout details.", preferredStyle: .alert)
            
            alertController.addTextField { titlenameField in
                titlenameField.placeholder = "Enter name of workout."
            }
            alertController.addTextField { objectivenameField in
                objectivenameField.placeholder = "Enter workout objective."
            }
            alertController.addTextField(){ typenameField in
                typenameField.placeholder = "Enter type of Workout."
            }
            let save = UIAlertAction(title: "Save", style: .default) { _ in
                if let title = alertController.textFields!.first?.text,
                   let objective = alertController.textFields![1].text,
                   let type = alertController.textFields![1].text{
                    print(title, objective, type)
                }
                
                
            }
            
            
            alertController.addAction(save)
        
            UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true)
                
        }
        
        
    }
        
    

struct WorkoutListScreen_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListScreen()
    }
}
