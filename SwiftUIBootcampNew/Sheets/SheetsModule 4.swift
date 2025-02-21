//
//  SheetsModule.swift
//  SwiftUIBootcampNew
//
//  Created by Shangdian Han on 2/20/25.
//

import SwiftUI

struct SheetsModule4: View {
    
    @State var showSheet = false
    @State var menuItem: MenuItem?
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                //showSheet.toggle()
                menuItem = MenuItem(imageName: "pizza", type: "Italian", restaurantName: "Domino's")
            }
        }
        .sheet(item: $menuItem) { menuItem in
              MenuItemView(menuItem: menuItem)
                .presentationDetents([.height(300)])
                //.presentationDetents([.fraction(0.8)]) //根据屏幕的百分比设置高度 .presentationBackgroundInteraction(.enabled(upThrough: .height(260)))
        }
        
    }
}

#Preview {
    SheetsModule4()
}
