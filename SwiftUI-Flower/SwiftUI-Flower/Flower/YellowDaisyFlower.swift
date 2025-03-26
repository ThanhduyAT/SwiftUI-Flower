//
//  YellowDaisyFlower.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 26/3/25.
//


import SwiftUI

struct YellowDaisyFlower: View {
    
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.2
    
    var body: some View {
        ZStack {
            ForEach(0..<36) { item in
                NormalFlowerPath()
                    .fill(.black.gradient)
                    .frame(width: 8, height: 8)
                    .offset(x: 30)
                    .rotationEffect(.degrees((Double(item) * angle)))
                    .scaleEffect(CGFloat(scale))
                
                ChrysanthemumPath()
                    .fill(.yellow.gradient)
                    .frame(width: 110, height: 20)
                    .offset(x: 75)
                    .rotationEffect(.degrees((Double(item) * angle)))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.orange)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 2).delay(delayTime)) {
                angle = 10
                scale = 1
            }
        }
    }
}

#Preview {
    YellowDaisyFlower()
}
