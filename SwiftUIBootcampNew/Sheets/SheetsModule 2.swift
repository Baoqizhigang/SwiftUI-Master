//
//  SheetsModule.swift
//  SwiftUIBootcampNew
//
//  Created by Shangdian Han on 2/20/25.
//

import SwiftUI

struct SheetsModule2: View {
    
    @State var showSheet = false
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                showSheet.toggle()
            }
        }
//        .sheet(isPresented: $showSheet) {
//            UberEatsMenu()
//        }
        .fullScreenCover(isPresented: $showSheet) {
             UberEatsMenu()
        }
    }
}

#Preview {
    SheetsModule2()
}
