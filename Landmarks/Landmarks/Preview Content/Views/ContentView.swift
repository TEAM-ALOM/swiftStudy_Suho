//
//  ContentView.swift
//  Landmarks
//
//  Created by 정수호 on 3/18/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
