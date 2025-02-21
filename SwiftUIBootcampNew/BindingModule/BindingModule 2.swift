import SwiftUI

struct ToggleExample: View {
    @State private var isOn = false  // 使用 @State 存储开关状态
    
    var body: some View {
        VStack {
            Toggle("   Enable Feature", isOn: $isOn)
                .foregroundStyle(Color(.black))
                .toggleStyle(ButtonToggleStyle())
                //.toggleStyle(SwitchToggleStyle())
                .background(Color(.yellow))
                .cornerRadius(10)
                .padding()
            
            Text("Feature is \(isOn ? "Enabled" : "Disabled")")
                .font(.headline)
                .foregroundColor(isOn ? .green : .red)
        }
    }
}

#Preview {
    ToggleExample()
}
