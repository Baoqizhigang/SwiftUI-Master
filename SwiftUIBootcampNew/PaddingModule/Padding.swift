//
//  Stacks.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/17/25.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
       
        VStack {
            Text ("Hello, world! How are you doing?")
                .foregroundColor(.white)
                .background(Color.brown)
                .padding() // all edges
                .background(Color.orange)
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.blue)
                .padding()
                .background(Color.green)
            
            Text("**Horizontal Padding**")
                .foregroundColor(.white)
                .font(.headline)
                .padding(.horizontal, 32) // left + right
                .background(Color.mint)
            
            Text("**Vertical Padding**")
                .foregroundColor(.white)
                .font(.title)
                .padding(.vertical, 32) // bottom + top
                .background(Color.cyan)
            
            Text("Leading Padding")
                .foregroundColor(.white)
                .font(.headline)
                .padding(.leading, 32) // left edge or right edge
                .background(Color.indigo)
            
            Text("Trailing Padding")
                .foregroundColor(.cyan)
                .font(.headline)
                .padding(.trailing, 32) // left edge or right edge
                .background(Color.yellow)
            
            Text("Top         Padding")
                .foregroundColor(.yellow)
                .font(.headline)
                .padding(.top, 32)
                .background(Color.gray  )
            
            Text("Bottom Padding")
                .foregroundColor(.pink)
                .font(.headline)
                .padding(.bottom, 32)
                .background(Color.gray.opacity(0.5))
                
        }
    }
}

#Preview {
    PaddingModule()
}

/*

 clean
 grey
 teal
 
 */
