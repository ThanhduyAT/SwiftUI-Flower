//
//  RoseFlower.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 8/4/25.
//


import SwiftUI

struct RoseFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                NormalFlowerPath()
                    .fill(.red.gradient)
                    .frame(width: 90, height: 50)
                    .offset(x: 40)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
            }
            
        }
        .rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 0.0, z: 0.0), anchor: .center)
        
        .overlay {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.orange)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 72
                scale = 1
            }
        }
        .background(.black)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RoseFlower()
}
