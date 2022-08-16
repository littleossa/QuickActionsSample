//
//  QuickActionsSampleApp.swift
//  QuickActionsSample
//
//  Created by littleossa on 2022/08/15.
//

import SwiftUI

@main
struct QuickActionsSampleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    private let quickActionState = QuickActionState.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(quickActionState)
        }
        .onChange(of: scenePhase) { newValue in
            switch newValue {
            case .active:
                quickActionState.removeSelectedActionIfNeeded()
            case .background:
                quickActionState.setActions()
            case .inactive:
                break
            @unknown default:
                fatalError()
            }
        }
    }
}
