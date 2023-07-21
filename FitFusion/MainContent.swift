//
//  MainContent.swift
//  FitFusion
//
//  Created by Cesar Melendez on 7/13/23.
//

import SwiftUI
import Firebase

struct MainContent: View {
    var body: some View {
        TabView {
            Workouts()
            .tabItem() {
                    Image(systemName: "figure.strengthtraining.traditional")
                    Text("Workouts")
            }
            DietPlans()
            .tabItem() {
                    Image(systemName: "fork.knife.circle")
                    Text("Diet Plan")
            }
        }.background(Color.white)
    }
}

struct MainContent_Previews: PreviewProvider {
    static var previews: some View {
        MainContent()
    }
}
