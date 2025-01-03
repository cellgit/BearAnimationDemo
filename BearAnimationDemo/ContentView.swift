//
//  ContentView.swift
//  BearAnimationDemo
//
//  Created by admin on 2025/1/3.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedAnimation: AnimationEnum = .bounceEffect
    
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.automatic)) {
            AnimationListView(selectedAnimation: $selectedAnimation)
        } detail: {
            AnimationDetailView(animation: selectedAnimation)
        }
        .navigationTitle("Bear Animation")
        
        
//        NavigationStack {
//            AnimationListView(selectedAnimation: $selectedAnimation)
//        }
//        .navigationTitle("Bear Animation")
        
    }
}

#Preview {
    ContentView()
}
