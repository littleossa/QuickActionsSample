//
//  QuickActionState.swift
//  QuickActionsSample
//
//  Created by littleossa on 2022/08/15.
//

import UIKit

class QuickActionState: ObservableObject {
    
    static let shared = QuickActionState()
    private init() {}
    
    @Published var selectedAction: QuickAction?
    private var isEnteredFromQuickAction = false
    
    func setActions() {
        let shortcutItems = QuickAction.allCases.map { $0.shortcutItem }
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    func selectAction(by shortcutItem: UIApplicationShortcutItem?) {
        let action = QuickAction(shortcutItem: shortcutItem)
        selectedAction = action
        isEnteredFromQuickAction = action == nil ? false : true
    }
    
    func removeSelectedActionIfNeeded() {
        if isEnteredFromQuickAction {
            isEnteredFromQuickAction = false
            return
        }
        selectedAction = nil
    }
}
