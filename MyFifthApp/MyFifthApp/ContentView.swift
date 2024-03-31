//
//  ContentView.swift
//  MyFifthApp
//
//  Created by 정수호 on 3/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactView()
                .tabItem {
                    Label("홈", systemImage: "house")
                }
            Text("Shorts")
                .tabItem {
                    Label("Shorts", systemImage: "bolt")
                }
            Text("+")
                .tabItem {
                    Label("", systemImage: "plus.circle")
                }
            Text("구독")
                .tabItem {
                    Label("구독", systemImage: "rectangle.stack.person.crop")
                }
            Text("나")
                .tabItem {
                    Label("나", systemImage: "person.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
    
