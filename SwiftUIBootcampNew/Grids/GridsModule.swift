//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/19/25.
//

import SwiftUI

struct GridsModule: View {
    
    let colums: [GridItem] = [
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
    ]
    
    let drivers = [
        "lewis-hamilton",
        "charles-leclerc",
        "yuki-tsunoda",
        "max-verstappen",
        "daniel-ricciardo",
        "fernando-alonso",
        "logan-sargeant",
        "checo-perez",
        "lando-norris"
    ]
    
    // substract 2 when we add 1 pixel of spacing on each horizontal edge
    // UIScreen.main.bounds.width 计算 屏幕宽度，确保 网格单元格尺寸自适应
    let dimension = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colums, spacing: 1) {
                ForEach(drivers, id: \.self) { driver in
                    Image(driver)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimension, height: dimension)
                        //.clipShape(Rectangle()) //裁剪 Image 成矩形，避免溢出。
                        .clipShape(RoundedRectangle(cornerRadius: 10))  // 🔵 圆角矩形剪裁
                }
            }
            .padding(.horizontal, 1)
        }
    }
}

#Preview {
    GridsModule()
}
