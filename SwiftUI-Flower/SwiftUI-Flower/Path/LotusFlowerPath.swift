//
//  LotusFlowerPath.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 31/3/25.
//


import SwiftUI

struct LotusFlowerPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.minX - 50, y: rect.maxY * 0.6))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.maxX + 50, y: rect.maxY * 0.6))
        
        return path
    }
}

#Preview {
    LotusFlowerPath()
        .frame(width: 240, height: 300)
}
