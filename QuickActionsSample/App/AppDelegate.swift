//
//  AppDelegate.swift
//  QuickActionsSample
//
//  Created by littleossa on 2022/08/16.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    private let quickActionState = QuickActionState.shared
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        quickActionState.selectAction(by: options.shortcutItem)
        
        let configuration = UISceneConfiguration(
            name: connectingSceneSession.configuration.name,
            sessionRole: connectingSceneSession.role
        )
        configuration.delegateClass = SceneDelegate.self
        return configuration
    }
}
