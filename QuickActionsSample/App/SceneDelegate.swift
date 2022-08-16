//
//  SceneDelegate.swift
//  QuickActionsSample
//
//  Created by littleossa on 2022/08/16.
//

import UIKit

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    private let quickActionState = QuickActionState.shared

    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        quickActionState.selectAction(by: shortcutItem)
        completionHandler(true)
    }
}
