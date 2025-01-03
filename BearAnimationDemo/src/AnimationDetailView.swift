//
//  AnimationDetailView.swift
//  BearAnimationDemo
//
//  Created by admin on 2025/1/3.
//

import SwiftUI

import BearAnimation


struct AnimationDetailView: View {
    
    let animation: AnimationEnum
    
    
    
    
    @State private var isBouncing = false
    
    
    @State private var showText = false
    
    @State private var shakeCount = 0
    
    var body: some View {
        
        switch animation {
        case .bounceEffect:
            VStack {
                Text("弹跳动画")
                    .font(.largeTitle)
                    .bounce(isAnimating: $isBouncing)
                
                Button("切换动画") {
                    isBouncing.toggle()
                }
            }
        case .bouncingBall:
            BouncingBall()
        case .pulsingCircle:
            PulsingCircle()
        case .rotatingIcon:
            RotatingIcon()
        case .shakeEffect:
            VStack {
                Text("错误输入")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .shake(times: shakeCount)
                
                Button("触发抖动") {
                    withAnimation(.default) {
                        shakeCount += 1
                    }
                }
            }
        case .slideTransition:
            VStack {
                if showText {
                    Text("滑入动画")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.green.opacity(0.7))
                        .cornerRadius(10)
                        .transition(.slide(from: .trailing))
                }
                
                Button("切换") {
                    withAnimation {
                        showText.toggle()
                    }
                }
            }
        }
        
    }
}

#Preview {
    AnimationDetailView(animation: .bounceEffect)
}
