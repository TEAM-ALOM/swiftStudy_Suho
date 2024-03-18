//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 정수호 on 3/18/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
