//
//  SheetsModule.swift
//  SwiftUIBootcampNew
//
//  Created by Shangdian Han on 2/20/25.
//

import SwiftUI

struct SheetsModule3: View {
    
    @State var showSheet = false
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet) {
            UberEatsMenu()
                .presentationDetents([.height(260), .medium, .large])
                //.presentationDetents([.fraction(0.8)]) //根据屏幕的百分比设置高度
                .presentationBackgroundInteraction(.enabled(upThrough: .height(260)))
        }
        
    }
}

#Preview {
    SheetsModule3()
}
