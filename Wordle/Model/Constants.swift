//
//  Constants.swift
//  StateManagement
//
//  Created by Eli Dresnin (student LM) on 1/30/24.
//

import SwiftUI

extension Color{
    static let background = Color("background")
    static let wordleGreen = Color("wordleGreen")
    static let wordleYellow = Color("wordleYellow")
    static let wordleGrey = Color("wordleGrey")
    
    
}
struct Constants {
    static let largeFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 50) ?? UIFont.systemFont(ofSize: 50))
    static let mediumFont: Font = Font(UIFont(name: "HelveticaNeue-Thin", size: 35) ?? UIFont.systemFont(ofSize: 35))
    static let smallFont: Font = Font(UIFont(name: "xHelveticaNeue-Thin", size: 35) ?? UIFont.systemFont(ofSize: 35))
}
