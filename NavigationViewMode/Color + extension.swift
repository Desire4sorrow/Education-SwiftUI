//
//  Color + extension.swift
//  NavigationViewMode
//
//  Created by Omega on 06.06.2022.
//

import Foundation
import SwiftUI

extension Color {
    
    static func getRandomColor() -> Color {
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        return Color(red:red, green: green, blue: blue)
    }
}
