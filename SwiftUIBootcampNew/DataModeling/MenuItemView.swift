//
//  DataModeling.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct MenuItemView: View {
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(menuItem.restaurantName)
                    .fontWeight(.semibold)
                
                Text(menuItem.type)
                    .foregroundColor(.gray)
                
                Text("$0.99 Delivery Fee | 15 - 30 min")
                    .foregroundColor(.secondary)
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(menuItem: MenuItem(imageName: "japanese-tapas", type: "Japanese", restaurantName: "Shoto"))
}


