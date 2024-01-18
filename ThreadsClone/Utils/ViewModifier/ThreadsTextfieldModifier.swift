//
//  ThreadsTextfieldModifier.swift
//  ThreadsClone
//
//  Created by Mahyar Moazezi on 1/18/24.
//

import SwiftUI
struct TextFieldStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3).foregroundStyle(.black).padding(5).background(Color(.systemGray6)).clipShape(RoundedRectangle(cornerRadius: 10)).padding(.horizontal)
    }
}

extension TextField {
    func textFieldStyle() -> some View {
        modifier(TextFieldStyleModifier())
    }
}
extension SecureField {
    func secureTextFieldStyle() -> some View {
        modifier(TextFieldStyleModifier())
    }
}
