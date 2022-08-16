//
//  QuickAction.swift
//  QuickActionsSample
//
//  Created by littleossa on 2022/08/16.
//

import UIKit

enum QuickAction: String, CaseIterable {
    case flame = "Flame"
    case water = "Water"
    case thunder = "Thunder"
    
    init?(shortcutItem: UIApplicationShortcutItem?) {
        
        guard let shortcutItem = shortcutItem,
              let action = QuickAction(rawValue: shortcutItem.type)
        else { return nil }
        
        self = action
    }
    
    var imageName: String {
        switch self {
        case .flame:
            return "flame"
        case .water:
            return "drop"
        case .thunder:
            return "bolt"
        }
    }
    
    var shortcutItem: UIApplicationShortcutItem {
        switch self {
        case .flame:
            return UIMutableApplicationShortcutItem(
                type: self.rawValue,
                localizedTitle: self.rawValue,
                localizedSubtitle: "Viewが熱く燃え上がります",
                icon: UIApplicationShortcutIcon(systemImageName: self.imageName)
            )
        case .water:
            return UIMutableApplicationShortcutItem(
                type: self.rawValue,
                localizedTitle: self.rawValue,
                localizedSubtitle: "Viewが水に満たされます",
                icon: UIApplicationShortcutIcon(systemImageName: self.imageName)
            )
        case .thunder:
            return UIMutableApplicationShortcutItem(
                type: self.rawValue,
                localizedTitle: self.rawValue,
                localizedSubtitle: "Viewが雷光により輝きます",
                icon: UIApplicationShortcutIcon(systemImageName: self.imageName)
            )
        }
    }
}
