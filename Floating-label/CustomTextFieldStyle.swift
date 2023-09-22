//
//  CustomTextFieldStyle.swift
//  Floating-label
//
//  Created by Md Shohidur Rahman on 9/22/23.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle{
    
    let placeholder: String
    let placeholderColor: Color
    let placeholderBgColor: Color
    let isEditing: Bool
    
    func _body(configuration: TextField<_Label>) -> some View {
        ZStack(alignment: .leading) {
            Text(placeholder)
                .font(.system(isEditing ? .title2 : .title3, design: .rounded))
                .foregroundColor(placeholderColor.opacity(0.8))
                .padding(.horizontal, isEditing ? 10 : 0)
                .background(placeholderBgColor)
                .offset(y: isEditing ? -28: 0)
                .scaleEffect(isEditing ? 0.9 : 1, anchor: .leading)
                
           configuration
                .font(.system(.title2, design: .rounded))
                .foregroundColor(placeholderColor)
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(isEditing ? placeholderColor.opacity(0.6) : placeholderColor, lineWidth: 2)
            
        }
       
    }
}

