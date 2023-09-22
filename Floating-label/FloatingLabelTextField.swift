//
//  FloatingLabelTextField.swift
//  Floating-label
//
//  Created by Md Shohidur Rahman on 9/22/23.
//

import SwiftUI

struct FloatingLabelTextFieldItem: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(placeholder)
                .foregroundColor(.blue.opacity(0.8))
                .offset(y: text.isEmpty ? 0 : -25)
                .scaleEffect(text.isEmpty ? 1 : 0.9, anchor: .leading)
                .font(.system(text.isEmpty ? .title2 : .title3, design: .rounded))
            TextField("", text: $text)
                .foregroundColor(.blue)
        }
        .padding(.top, text.isEmpty ? 0 : 18)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(text.isEmpty ? .blue.opacity(0.6) : .blue, lineWidth: 2)
            
        }
        .animation(.spring(), value: text)
        .cornerRadius(10)
        .padding()
        .frame(height: 70)
    }
}

//struct FloatingLabelTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        FloatingLabelTextField()
//    }
//}
