//
//  NormalFlowerPath.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 26/3/25.
//


import SwiftUI

struct NormalFlowerPath: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
        
}
