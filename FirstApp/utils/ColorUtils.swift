//
//  ColorUtils.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/18/24.
//

import Foundation
import SwiftUI

extension View where Self == Color{
    public static var test : Color {
         return Color ("#BDBFC1")
     }
}

extension ShapeStyle where Self == Color {
    
   public static var lightGray : Color {
        return Color ("#BDBFC1")
    }
    
//    var coordinator: MainCoordinator? {
//        return MainCoordinator()
//    }
    //let darkGray = Color(hex : "#BDBFC1")
}


extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}
