//
//  SpacersModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/18/25.
//

import SwiftUI

struct SpacersModule: View {
    var body: some View {
        ZStack{
            VStack {
                Text ("Spacers Module")
                
                Spacer()
                    .frame(width: 24)
                    .background(.red)
                
                Text ("Spacer Example")
            }
            
            HStack {
                Text ("Horizontal Spacer")
                
                Spacer()
                    .frame(height: 24)
                    .background(.purple)
                
                Text ("Example")
            }
        }
    }
}

#Preview {
    SpacersModule()
}
