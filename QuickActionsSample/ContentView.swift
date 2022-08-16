//
//  ContentView.swift
//  QuickActionsSample
//
//  Created by littleossa on 2022/08/15.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var quickActionState: QuickActionState
    
    private var backgroundColor: Color {
        switch quickActionState.selectedAction {
        case .flame:
            return .red
        case .water:
            return .blue
        case .thunder:
            return .yellow
        case .none:
            return .white
        }
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(backgroundColor)
                .ignoresSafeArea()
            
            if let action = quickActionState.selectedAction {
                Image(systemName: action.imageName)
                    .resizable()
                    .frame(width: 150,
                           height: 200)
                    .foregroundColor(action == .thunder ? .black : .white)
            }
        }
    }
}
