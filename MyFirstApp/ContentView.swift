//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 정수호 on 2/25/24.
//

import SwiftUI

struct IOS: Hashable{
    let name: String
    let position: String
}

struct ContentView: View {
    
    let members: [IOS] = [
        IOS(name: "김도형", position: "리드멘토"),
        IOS(name: "정성윤", position: "리드멘토"),
        IOS(name: "은서우", position: "멘토"),
        IOS(name: "박근경", position: "멘토"),
        IOS(name: "황은지", position: "멘티"),
        IOS(name: "이창희", position: "멘티"),
        IOS(name: "이하빈", position: "멘티"),
        IOS(name: "정수호", position: "멘티"),
        IOS(name: "김학규", position: "멘티")
    ]
    
    let leadmentor = "리드멘토"
    let mentor = "멘토"
    //let mentee = "멘티"
    
    func emoticon(for position: String) -> String {
        if position == leadmentor {
            return "🚗"
        }
        else if position == mentor {
            return "🚕"
        }
        else {
            return "🚙"
        }
    }

    var body: some View {
        List {
            ForEach(members, id: \.self) { members in
                Text("\(self.emoticon(for: members.position)) \(members.name) \(members.position)")
            }
        }
    }
}

#Preview {
    ContentView()
}
