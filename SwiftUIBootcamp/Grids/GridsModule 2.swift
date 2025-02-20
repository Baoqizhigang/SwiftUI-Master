import SwiftUI

struct GridsModuleHorizontal: View {
    
    let rows: [GridItem] = [
        .init(.fixed(150), spacing: 1),
        .init(.fixed(150), spacing: 1),
        //.init(.fixed(150), spacing: 1),
    ]
    
    let drivers = [
        "lewis-hamilton",
        "charles-leclerc",
        "yuki-tsunoda",
        "ProfilePicture",
        "max-verstappen",
        "daniel-ricciardo",
        "fernando-alonso",
        "logan-sargeant",
        "checo-perez",
        "lando-norris"
    ]
    
    // 计算单元格尺寸，适应屏幕高度
    var dimension = 148.0 //(UIScreen.main.bounds.height / 3)
    
    var body: some View {
        ScrollView(.horizontal) { // ✅ 修改为水平滚动
            LazyHGrid(rows: rows, spacing: 1 ) { // ✅ 使用 `LazyHGrid`
                ForEach(drivers, id: \.self) { driver in
                    Image(driver)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimension, height: dimension)
                        .clipShape(Rectangle())

                }
                
            }
            .padding(.vertical, 1)

        }
    }
}

#Preview {
    GridsModuleHorizontal()
}
