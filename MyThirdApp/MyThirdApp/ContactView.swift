//
//  ContactView.swift
//  MyThirdApp
//
//  Created by 정수호 on 3/10/24.
//

import SwiftUI

struct ContactView: View {
    @State var InputName: String = ""
    
    var SearchList: [Person] {
        if InputName.isEmpty {
            return contacts
        }
        else {
            return contacts.filter{
                ($0.name.contains(InputName))
            }
        }
    }
    
    
    var body: some View {
        NavigationStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                
                TextField("검색", text: $InputName)
                    .disableAutocorrection(true)
                
                Image(systemName: "mic.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                
                Spacer()
            }
            .frame(height: 35)
            .background(Color.whiteGray)
            .cornerRadius(10)
            .padding(.horizontal, 10)
            
            List {
                NavigationLink {
                    ProfileDetaileView(person: my)
                } label: {
                    ProfileView(name: my.name, image: my.imageName)
                }
                
                ForEach(SearchList, id: \.self) { person in
                    if person != my {
                        NavigationLink {
                            ProfileDetaileView(person: person)
                        } label: {
                            Text(person.name)
                        }
                    }
                }
            }
            .listStyle(.plain)
            
            Spacer()
                .navigationTitle("연락처")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
