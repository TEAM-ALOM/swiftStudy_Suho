//
//  ContentView.swift
//  MyThirdApp
//
//  Created by 정수호 on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactView()
                .tabItem {
                    Label("연락처", systemImage: "person.circle.fill")
                }
            
            Text("키패드 화면")
                .tabItem{
                    Label("키패드", systemImage: "circle.grid.3x3.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
