//
//  FitFusionApp.swift
//  FitFusion
//
//  Created by Andrea Tinsley on 7/11/23.
//

import SwiftUI
import FirebaseCore

@main
struct FitFusionApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
