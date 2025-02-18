//
//  Stacks.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/17/25.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .cornerRadius(20)
            
            Circle()
                .fill(Color.green.opacity(0.5))
                .frame(width: 180, height: 200)
                .cornerRadius(20)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 160, height: 150)
                .cornerRadius(20)
            
            Rectangle()
                .fill(Color.red)
                .frame(width:120, height: 100)
                .cornerRadius(20)
            
            Image(systemName: "heart.circle.fill")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: 50, height: 50)
                .padding()
        }
        
        VStack(spacing: -10){
            Text("Hello WORLD")
            
            Image(systemName: "heart.circle.fill")
                .resizable()
                .foregroundColor(.pink)
                .frame(width: 100, height: 100)
            
            Text("Hello World!")
        }
        .padding(50)
        
        HStack(spacing: 10) {
            Text("**Hello**")
                .font(.largeTitle)
            
            Image(systemName: "heart.circle.fill")
                .resizable()
                .foregroundColor(.pink)
                .frame(width: 80, height: 80)
            
            Text("**World**")
                .font(.largeTitle)
        }
        
        HStack(alignment: .bottom, spacing: 15) {
            VStack(spacing: 5) {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 60)
                    .cornerRadius(10)
                Text("Revenue")
            }
            
            VStack(spacing: 5) {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 50, height: 80)
                    .cornerRadius(10)
                Text("Growth")
            }
            
            VStack(spacing: 5) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 100)
                    .cornerRadius(10)
                Text("Margin")
            }
            
            VStack(spacing: 5) {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 120)
                    .cornerRadius(10)
                Text("Profit")
            }
            
        }
        
    }
}

#Preview {
    Stacks()
}
