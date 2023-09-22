//
//  ContentView.swift
//  Floating-label
//
//  Created by Md Shohidur Rahman on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var text1: String = ""
    
    var body: some View {
        VStack(spacing: 15){
//            Group {
//                FloatingLabelTextFieldItem(placeholder: "First Name", text: $text)
//                FloatingLabelTextFieldItem(placeholder: "Last Name", text: $text1)
//            }
//
//            Group {
//                FloatingBorderLabelTextField(placeholder: "First Name", text: $text)
//                FloatingBorderLabelTextField(placeholder: "Last Name", text: $text1)
//            }
            
            TextField("", text: $text)
                .textFieldStyle(CustomTextFieldStyle(placeholder: "First Name", placeholderColor: .blue, placeholderBgColor: .white, isEditing: !text.isEmpty))
                
        }
        .animation(.easeOut, value: text)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


