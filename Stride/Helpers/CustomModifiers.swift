//
//  CustomModifiers.swift
//  Stride
//
//  Created by David on 7/16/21.

import Foundation
import SwiftUI

// Used on the section headers
struct HomeHeaderTextStyle: ViewModifier {
    
    let font = Font.system(size: 18).weight(.bold)
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.titleBlue)
            .font(font)
    }
}

extension View {
    func homeHeaderTextStyle() -> some View{
        self.modifier(HomeHeaderTextStyle())
    }
}

// Default corner radius for cards, sections, and more
struct CornerRadiusDefault: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .cornerRadius(12)
    }
}

extension View {
    func cornerRadiusDefault() -> some View{
        self.modifier(CornerRadiusDefault())
    }
}
