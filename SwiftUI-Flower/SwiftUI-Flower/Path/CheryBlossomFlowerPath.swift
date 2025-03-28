//
//  CheryBlossomFlowerPath.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 28/3/25.
//


import SwiftUI

struct CheryBlossomFlowerPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.maxX, y: rect.maxY))
        
        return path
    }
}

#Preview {
    CheryBlossomFlowerPath()
        .frame(width: 110, height: 20)
        .foregroundColor(.yellow)
}
