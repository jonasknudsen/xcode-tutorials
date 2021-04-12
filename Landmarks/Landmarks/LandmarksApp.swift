//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jonas Knudsen on 4/11/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
