//
//  TextFieldModule.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/20/25.
//

import SwiftUI

struct TextFieldModule: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        VStack(spacing: 24) {
            Image("messenger-app-icon")
                .resizable()
                .frame(width:180, height:180)
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                TextField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                print("Email is \(email)")
                print("Password is \(password)")
            } label: {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 370, height: 48)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
    
    
#Preview {
    
        TextFieldModule()
}
