//
//  LoopsModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/18/25.
//

import SwiftUI

struct LoopsModule: View {
    
    let drivers: [String] = [
        "Lewis Hamilton",
        "Joe Liu",
        "Danile Nicoson",
        "Julie Huang",
        "Cindy Leclerc",
        "Max Verstappen"
    ]
    
    var body: some View {
        VStack {
            ForEach (drivers, id: \.self) { driver in
                HStack {
                    // profile image
                    Image("ProfilePicture")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                    
                    // name stuff
                    VStack(alignment: .leading) {
//                        Text ("Joe")
//                            .font(.subheadline)
//                            .fontWeight(.semibold)
                        
                        Text(driver)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .foregroundColor(.pink)
                        .frame(width: 25, height: 25)
                }
                Divider()
            }
            Text("Loop ended")
        }
        .padding()
    }
}

#Preview {
    LoopsModule()
}
