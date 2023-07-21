//
//  Workouts.swift
//  FitFusion
//
//  Created by Cesar Melendez on 7/21/23.
//

import SwiftUI

struct Workouts: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack {
                Text("Let's get moving.")
                .foregroundStyle(.white)
                .font(.system(size: 40.0))
                .bold()
                .padding(.bottom)
                
                VStack (alignment: .leading, spacing: 10) {
                    Text("Chest, Shoulders, and Tricep: ")
                        .font(.system(size: 20.0))
                        .bold()
                    
                    VStack (alignment: .leading, spacing: 5) {
                        Text("Bench Press - 4 sets, 8-12 reps")
                        Text("Shoulder Press - 3 sets, 8-12 reps")
                        Text("Incline Bench Press - 3 sets, 8-12 reps")
                        Text("Shoulder Raises - 3 sets, 8-12 reps")
                        Text("Push-Ups - 4 sets, Until failure")
                        Text("Tricep Pushdowns - 3 sets, 8-12 reps")
                    }
                    
                    Text("Back and Biceps: ")
                    .font(.system(size: 20.0))
                    .bold()
                    .padding(.top)
                    
                    VStack (alignment: .leading, spacing: 5) {
                        Text("Lat Pull Down - 4 sets 8-12 reps")
                        Text("Barbell Rows - 3 sets, 8-12 reps")
                        Text("Pull-Ups - 4 sets, Until failure")
                        Text("Hammer Curls - 3 sets, 8-12 reps")
                        Text("Spider Curls - 3 sets, 8-12 reps")
                    }
                    
                    Text("Legs: ")
                    .font(.system(size: 20.0))
                    .bold()
                    .padding(.top)
                    
                    VStack (alignment: .leading, spacing: 5) {
                        Text("Back Squats - 4 sets 8-12 reps")
                        Text("Leg Press - 3 sets, 8-12 reps")
                        Text("Romanian Deadlifts - 3 sets, 8-12 reps")
                        Text("Leg Extensions - 3 sets, 8-12 reps")
                        Text("Calf Raises - 4 sets, Until failure")
                    }

                }
            }
        }
    }
}

struct Workouts_Previews: PreviewProvider {
    static var previews: some View {
        Workouts()
    }
}
