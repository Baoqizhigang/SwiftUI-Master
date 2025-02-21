/*
 In SwiftUI, @Binding is a property wrapper used for creating a two-way connection between a property's value in one view and its value in another view or a parent view. It's typically used to pass data between views and synchronize changes bidirectionally.
 */

//  Created by Shangdian Han on 2/20/25.
//

import SwiftUI

struct BindingModule: View {
    
    @State var isOn = false
    @State var showBatteryLife = false
    
    var body: some View {
        VStack {
            Text("Notifications: \(isOn ? "Enabled" : "Disabled")")
            
            if showBatteryLife {
                Text("Battery Life: 100%")
                    .foregroundColor(.blue)
            } else {
                Text("Battery Life: 100%")
                    .foregroundColor(.white)
            }
            
            SettingsRowView(imageName: "bell.circle.fill", title: "Notifications", isOn: $isOn)
            
            SettingsRowView(imageName: "battery.100.circle.fill", title: "Battery Life", isOn: $showBatteryLife)
        }
    }
}

#Preview {
    BindingModule()
}

struct SettingsRowView: View {
    
    let imageName: String
    let title: String
    
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.blue)
                
                Text(title)
                    .font(.subheadline)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}


