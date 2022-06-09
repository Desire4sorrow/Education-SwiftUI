//
//  TextFieldModifiers.swift
//  TextFieldsViewModifiers
//
//  Created by Omega on 09.06.2022.
//

import SwiftUI

struct PassiveTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(.roundedBorder)
            .font(.system(size: 24))
            .keyboardType(.emailAddress)
            .padding(.horizontal, 24)
            .shadow(color: Color.gray, radius: 4, x: 2, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray)
                    .padding(.horizontal, 24)
            )
    }
}

struct ActiveTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(.roundedBorder)
            .font(.system(size: 24))
            .keyboardType(.emailAddress)
            .padding(.horizontal, 24)
            .shadow(color: Color.gray, radius: 4, x: 2, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.blue)
                    .padding(.horizontal, 24)
            )
    }
}

struct ErrorTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(.roundedBorder)
            .foregroundColor(Color.red)
            .font(.system(size: 24))
            .keyboardType(.emailAddress)
            .padding(.horizontal, 24)
            .shadow(color: Color.red, radius: 4, x: 2, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.red)
                    .padding(.horizontal, 24)
            )
    }
}
