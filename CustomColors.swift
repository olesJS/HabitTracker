//
//  CustomColors.swift
//  HabitTracker
//
//  Created by Олексій Якимчук on 09.07.2023.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var lightBlue: Color {
        Color(red: 0.56, green: 0.79, blue: 0.9)
    }
    
    static var midBlue: Color {
        Color(red: 0.13, green: 0.62, blue: 0.74)
    }
    
    static var darkBlue: Color {
        Color(red: 0.01, green: 0.19, blue: 0.28)
    }
    
    static var customYellow: Color {
        Color(red: 1.0, green: 0.72, blue: 0.01)
    }
    
    static var customOrange: Color {
        Color(red: 0.98, green: 0.52, blue: 0.0)
    }
}
