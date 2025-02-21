//
//  SheetsModule.swift
//  SwiftUIBootcampNew
//
//  Created by Shangdian Han on 2/20/25.
//

import SwiftUI

struct SheetsModule5: View {
    
    @State var showSheet = false
    @State var menuItem: MenuItem?
    
    var body: some View {
        VStack {
            if let item = menuItem {
                MenuItemView(menuItem: item)
            }
            
            Button("Show Sheet") {
                showSheet.toggle()
                //menuItem = MenuItem(imageName: "pizza", type: "Italian", restaurantName: "Domino's")
            }
        }
        .sheet(isPresented: $showSheet) {
            // code for when sheet dismisses
            menuItem = MenuItem(imageName: "pizza", type: "Italian", restaurantName: "Domino's")
        } content: {
            Text("On dismiss stuff")
        }
        
    }
}

#Preview {
    SheetsModule5()
}
