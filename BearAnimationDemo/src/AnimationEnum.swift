//
//  AnimationEnum.swift
//  BearAnimationDemo
//
//  Created by admin on 2025/1/3.
//

import Foundation

enum AnimationEnum: String, CaseIterable, Hashable {
    
    case bounceEffect = "BounceEffect"
    case bouncingBall = "BouncingBall"
    case pulsingCircle = "PulsingCircle"
    case rotatingIcon = "RotatingIcon"
    case shakeEffect = "ShakeEffect"
    case slideTransition = "SlideTransition"
    
    var title: String {
        self.rawValue
    }
    
    var subtitle: String {
        switch self {
        case .bounceEffect:
            return "Bounce Effect: 弹跳动画"
        case .bouncingBall:
            return "Bouncing Ball: 封装组合动画(将多个动画组合在一起，形成一个新的动画效果, 有时，我们需要多个动画同时执行，可以封装一个结构体来管理多个动画。)"
        case .pulsingCircle:
            return "Pulsing Circle: 可重复动画(例如一个脉冲按钮或闪烁效果)"
        case .rotatingIcon:
            return "Rotating Icon: 可复用的动画 View(如果某个动画逻辑较为复杂，可以将其封装到 @ViewBuilder 组件中，便于复用。)"
        case .shakeEffect:
            return "Shake Effect: 自定义动画绑定(在某些情况下，我们希望动画不仅影响视图显示，还能与绑定的状态结合。)"
        case .slideTransition:
            return "Slide Transition: 通用的过渡动画(用于视图的显示和隐藏)"
            
        }
    }
    
    var imageName: String {
        switch self {
        case .bounceEffect:
            return "star"
        case .bouncingBall:
            return "circle"
        case .pulsingCircle:
            return "square"
        case .rotatingIcon:
            return "triangle"
        case .shakeEffect:
            return "rectangle"
        case .slideTransition:
            return "rectangle"
            
        }
    }
    
}
