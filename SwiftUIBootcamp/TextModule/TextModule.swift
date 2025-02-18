//
//  SwiftUIView.swift
//  SwiftUIBootcamp
//
//  Created by Shangdian Han on 2/17/25.
//

import SwiftUI

struct SwiftUIView: View {
    
    var myString : AttributedString {
        var myString = AttributedString("Frist Section")
        myString.foregroundColor = .red
        myString.backgroundColor = .yellow
        myString.underlineStyle = .single
        myString.font = .title
        return myString
    }
    
    let sample: LocalizedStringKey = "With markdown you can get text to \(Text("**bold**").foregroundColor(.orange).font(.title)), *italics*, ~strikethrough~ and even \(Text("`monospaced text`").foregroundColor(.purple).font(.title3).fontWeight(.bold))simply by marking it up. You can even add like to your text like this for a web site [Create Beautifl APPs](https://www.createbeautifulapp.com)"
    
    let palette = Image(systemName:"paintpalette.fill").symbolRenderingMode(.multicolor)
    
    var body: some View {
        NavigationStack {
            Section("\(myString)") {
                Text("Hello, **World!** I am trying to learn SwiftUI.                     Wish me luck!!!")
                    .font(.largeTitle) // view modifier
                    .foregroundColor(.blue)
                    .fontWeight(.light)
                    .multilineTextAlignment(.trailing)
                    .italic()
                    .underline()
                Text("This is **BOLD** !!")
                    .font(.title)
                Text("This is *italics* and this is *ITALICS* too!!")
                    .foregroundColor(.green)
                    .font(.title2)
                Text("This is ~strikethrough~!!")
                    .foregroundColor(.red)
                    .font(.title2)
                Text("This is:    `monospaced text`    !!!!")
                    .foregroundColor(.blue)
                    .font(.title3)
                    .padding(.bottom)
            }
       
        Section("**The Second Section**") {
            LabeledContent("WebLink"){
                Text(" [Visit Apple](https://www.apple.com)")
                    .underline()
                    //.foregroundColor(.blue)
            }
            LabeledContent("Mail To"){
                Text("Email [Joe Liu](mailto:geneius@gmail.com)")
                    .underline()
            }
            .padding(.bottom)
        }
        .font(.title3)
        
        Section("**`String Interpolation`**") {
            Text(sample)
            
            LabeledContent("Vebatim"){
                Text("This is **BOLD**, *italics*, ~strikethrough~ and `monospaced`.")
                    .font(.title3)
                }
            .padding(.top)
            
            LabeledContent("**Symbols**"){
                Text("This is a symbol")
                Image(systemName: "paintpalette.fill")
                    .symbolRenderingMode(.multicolor)
                    .font(.largeTitle)
                }
            
            LabeledContent("**PreSetSymbols**"){
                Text("This is a preset symbol \(Text(palette).font(.largeTitle))")
                }
            
            }

        }
    }
}

#Preview {
    SwiftUIView()
}
