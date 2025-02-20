//
//  ViewExtractionModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        ScrollView {
            DriverRowView(driverName: "Lewis Hamilton", imageName: "lewis-hamilton", teamName: "Mercedes")
            
            DriverRowView(driverName: "Max Verstappen", imageName: "max-verstappen", teamName: "Redbull")
            DriverRowView(driverName: "Checo Perez", imageName: "checo-perez", teamName: "Redbull")
            DriverRowView(driverName: "Fernando Alonso", imageName: "fernando-alonso", teamName: "Aston Martin")
        }
        .padding()
    }
}

struct DriverRowView: View {
    
    let driverName: String
    let imageName: String
    let teamName: String
    
    var body: some View {
        
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading) {
                Text(driverName)
                    .font(.caption)
                    .fontWeight(.semibold)
                
                Text(teamName)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .font(.subheadline)
            
            Spacer()
        }
    }
}


#Preview {
    ViewExtractionModule()
}
