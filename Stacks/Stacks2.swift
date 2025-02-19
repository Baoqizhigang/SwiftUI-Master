//
//  Stacks.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/17/25.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
       
        VStack (alignment: .leading, spacing: 2){
            // cell 1
            HStack {
                // profile image
                Image("ProfilePicture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 100)
                    .clipShape(Circle())
                
                // name stuff
                VStack(alignment: .leading) {
                    Text ("Joe")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text ("Joe Liu")
                        .font(.subheadline)
                }
            }
            Divider()
            
            // cell 2
            HStack {
                // profile image
                Image("ProfilePicture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 100)
                    .clipShape(Circle())
                
                // name stuff
                VStack(alignment: .leading) {
                    Text ("Joe")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text ("Joe Liu")
                        .font(.subheadline)
                }
            }
            Divider()
    
        }
        .padding()
    }
}

#Preview {
    StacksModule()
}
