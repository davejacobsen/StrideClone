//
//  HeaderCurve.swift
//  Stride
//
//  Created by David on 7/14/21.
//

import SwiftUI

// used to recreate the Home tab header curvature

struct HeaderCurve: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.maxX, y: rect.minY), control1: CGPoint(x: rect.maxX / 30, y: rect.minY), control2: CGPoint(x: rect.maxX / 1, y: rect.minY))
        
        return path
    }
}

struct HeaderCurve_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCurve()
            .frame(width: 100, height: 100)
            .background(Color.gray)
            .previewLayout(.sizeThatFits)
    }
}
