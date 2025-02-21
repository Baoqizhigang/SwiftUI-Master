//
//  ControlFlowModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct ControlFlowModule: View {
    
    @State var showImage = true
    @State var didLike = false
    @State var likes = 500
    
    var body: some View {
        
        VStack {
            Button{
                didLike.toggle()
                
                if didLike {
                    likes += 1
                } else {
                    likes -= 1
                }
                
            } label: {
                
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundColor(didLike ? .red : .black)
                
//                if didLike {
//                    Image(systemName: "heart.fill")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundStyle(.red)
//                } else {
//                    Image(systemName: "heart")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundColor(.black)
//                }
            }
            
            Text("\(likes) likes")
                .font(.headline)
        }
    }
}

#Preview {
    ControlFlowModule()
}
