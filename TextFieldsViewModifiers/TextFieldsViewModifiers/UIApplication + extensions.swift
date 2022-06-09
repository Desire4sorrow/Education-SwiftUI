//
//  UIApplication + extensions.swift
//  TextFieldsViewModifiers
//
//  Created by Omega on 09.06.2022.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
