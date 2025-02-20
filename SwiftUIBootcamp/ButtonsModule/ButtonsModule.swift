//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct ButtonsModule: View {
    
    @State var rectangleColor = Color.indigo
    @State var title = "Tap me!"
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(20)
                .foregroundColor(rectangleColor)
                
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            
             
            Button("**Click me!**"){
                rectangleColor = .blue
                title = "click me is CLICKED"
            }
            .padding()
            
            Button{
                rectangleColor = .purple
                title = "Custom button!"
            } label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            
            Button {
                rectangleColor = .pink
                title = "Image Button"
            } label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 82, height: 82)
                    .foregroundColor(.pink)
            }
        }
    }
}

#Preview {
    ButtonsModule()
}
