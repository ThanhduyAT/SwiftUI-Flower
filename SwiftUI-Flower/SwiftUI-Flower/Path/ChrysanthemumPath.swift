//
//  ChrysanthemumPath.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 28/3/25.
//


import Foundation
import SwiftUI

struct ChrysanthemumPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: 110, y: rect.midY), radius: 10, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
        
        return path
    }
}

struct ChrysanthemumOppositePath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: rect.minX, y: rect.midY), radius: 50, startAngle: .degrees(270), endAngle: .degrees(90), clockwise: true)
        
        return path
    }
}

#Preview {
    ChrysanthemumOppositePath()
        .frame(width: 110, height: 20)
        .foregroundColor(.yellow)
}
