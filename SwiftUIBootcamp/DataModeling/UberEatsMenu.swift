//
//  DataModeling.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct UberEatsMenu: View {
    
    let menuItems: [MenuItem] = [
        .init(imageName: "japanese-tapas", type: "Japanese", restaurantName: "Shoto"),
        .init(imageName: "steak", type: "American", restaurantName: "Ruth's Chris"),
        .init(imageName: "burgers", type: "American", restaurantName: "Shake Shack"),
        .init(imageName: "pizza", type: "Italian", restaurantName: "Domino's"),
        .init(imageName: "sushi", type: "Japanese", restaurantName: "Nobu"),
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(menuItems) { item in
                        MenuItemView(menuItem: item)
                    }
                }
            }
        }
    }
}

#Preview {
    UberEatsMenu()
}

