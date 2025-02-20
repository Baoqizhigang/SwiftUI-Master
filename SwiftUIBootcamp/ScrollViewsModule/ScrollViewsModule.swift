//
//  ScrollViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/18/25.
//

import SwiftUI

struct ScrollViewsModule: View {
    
    let foodImages = [
        "japanese-tapas",
        "burgers",
        "pizza",
        "sushi",
        "steak"
    ]
    
    var body: some View {
        
        ScrollView {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()

            VStack(spacing: 10) {
                ForEach(foodImages, id: \.self) { foodImage in
                    VStack(alignment: .leading) {
                        Image(foodImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 360, height: 150)
                            //.clipShape(Rectangle())
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading) {
                            Text("**Shoto**")
                            
                            Text("$0.99 Delivery Fee | 15 - 30 min")
                                .foregroundColor(.secondary)
                        }
                        .font(.subheadline)
                    }
                }
                
            }

        }
    }
}

#Preview {
    ScrollViewsModule()
}
