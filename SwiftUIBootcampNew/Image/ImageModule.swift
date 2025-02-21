//
//  ImageModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/17/25.
//

import SwiftUI

struct ImageModule: View {
    var body: some View {
        Image(systemName: "heart.circle.fill")
            .resizable()
            .foregroundColor(.pink)
//            .font(.largeTitle)
//            .imageScale(.ß)
            .frame(width: 100, height: 100)
        
        Image("land")
            .resizable()
            //.scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            
    }
}

#Preview {
    ImageModule()
}
