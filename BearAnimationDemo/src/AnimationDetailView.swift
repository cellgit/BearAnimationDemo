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
    
    
    
    
    @State private var isAnimating = false
    
    
    @State private var showText = false
    
    @State private var shakeCount = 0
    
    var body: some View {
        
        switch animation {
        case .bounceEffect:
            VStack {
                Text("弹跳动画")
                    .font(.largeTitle)
                    .bounce(isAnimating: $isAnimating)
                
                Button("切换动画") {
                    isAnimating.toggle()
                }
            }
        case .bouncingBall:
//            BouncingBall(isBouncing: $isAnimating)
            VStack {
                Text("弹跳动画")
                    .font(.largeTitle)
                    .bounce(isAnimating: $isAnimating)
                
                Button("切换动画") {
                    isAnimating.toggle()
                }
            }
        case .pulsingCircle:
            VStack {
                pulsing(isAnimating: $isAnimating)
                
                Button("切换动画") {
                    isAnimating.toggle()
                }
            }
        case .rotatingIcon:
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
