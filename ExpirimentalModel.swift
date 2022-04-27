//
//  ExpirimentalModel.swift
//  Expirimental Creation
//
//  Created by Yona Voss-Andreae on 4/26/22.
//

import SwiftUI
import Foundation

struct ColorBehavior {

    struct ColorVariants: Identifiable {
        
        var displayName: String
        var name: Color
        let id = UUID()
        
        init(displayedAs: String, color: Color) {
            displayName = displayedAs
            name = color
        }
    }
}
