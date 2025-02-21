//
//  MenuItem.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id = NSUUID().uuidString
    
    let imageName: String
    let type: String
    let restaurantName: String
    
}
