//
//  AnimationListView.swift
//  BearAnimationDemo
//
//  Created by admin on 2025/1/3.
//

import SwiftUI

struct AnimationListView: View {
    
    @Binding var selectedAnimation: AnimationEnum
    
    var body: some View {
        List(AnimationEnum.allCases, id: \.self) { item in
            NavigationLink(destination: AnimationDetailView(animation: item)) {
                HStack {
                    Image(systemName: item.imageName)
                    Text(item.subtitle)
                }
            }
        }
    }
}

#Preview {
    AnimationListView(selectedAnimation: .constant(.bounceEffect))
}
