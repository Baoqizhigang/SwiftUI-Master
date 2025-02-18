//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/17/25.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
        Circle()
            .stroke(lineWidth: 20)
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
        
        Rectangle()
            .stroke(lineWidth: 50)
            .fill(.blue)
            .foregroundColor(.blue)
            .cornerRadius(30)
            .frame(width: 200, height: 200)
            .padding(50)
        
        Capsule()
            .fill(.cyan)
            .frame(width: 200, height: 50)
    }
}

#Preview {
    ShapesModule()
}
