//
//  FloatingBorderLabelTextField.swift
//  Floating-label
//
//  Created by Md Shohidur Rahman on 9/22/23.
//

import SwiftUI

struct FloatingBorderLabelTextField: View {
    
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(placeholder)
                .font(.system(text.isEmpty ? .title2 : .title3, design: .rounded))
                .foregroundColor(.blue.opacity(0.8))
                .padding(.horizontal, text.isEmpty ? 0 : 10)
                .background(.white)
                .offset(y: text.isEmpty ? 0 : -28)
                .scaleEffect(text.isEmpty ? 1 : 0.9, anchor: .leading)
                
            TextField("", text: $text)
                .foregroundColor(.blue)
                .font(.system(.title2, design: .rounded))
        }
        .animation(.spring(), value: text)
        .padding(.horizontal)
        .padding(.vertical,10)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(text.isEmpty ? .blue.opacity(0.6) : .blue, lineWidth: 2)
            
        }
    }
}

//struct FloatingBorderLabelTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        FloatingBorderLabelTextField()
//    }
//}
