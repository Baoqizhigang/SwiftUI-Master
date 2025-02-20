//
//  ListsModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct ListsModule: View {
    @State var drivers = [
        "lewis-hamilton",
        "charles-leclerc",
        "yuki-tsunoda",
        "ProfilePicture",
        "max-verstappen",
        "daniel-ricciardo",
        "fernando-alonso",
        "logan-sargeant",
        "checo-perez",
        "lando-norris"
    ]
    
    let teams = [
        "Merecedes",
        "Ferrari",
        "RedBull",
        "Williams",
        "Alfa Tauri"
    ]

    var body: some View {
        List {
            Section("**Driver**") {
                ForEach(drivers, id: \.self) { driver in
                    Text(driver)
                }
                .onDelete{ indices in
                    drivers.remove(atOffsets: indices)
                }
                .foregroundColor(.red)
            }
            .listRowBackground(Color.mint.opacity(0.2))
            
            
            Section("Teams"){
                ForEach(teams, id: \.self) { team in
                    Text(team)
                }
            }
        }
        .listStyle(SidebarListStyle())
        //.listStyle(InsetGroupedListStyle())
        //.listStyle(DefaultListStyle())
        //.listStyle(PlainListStyle())
    }
}

#Preview {
    ListsModule()
}
