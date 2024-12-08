//
//  PopoverManager.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

class PopoverManager: ObservableObject {
    @Published var activePopover: PopoverType? = nil

    enum PopoverType: Identifiable {
        case settings
        case profile
        case notifications

        var id: String {
            switch self {
            case .settings: return "settings"
            case .profile: return "profile"
            case .notifications: return "notifications"
            }
        }
    }

    // Open a specific popover
    func showPopover(_ popover: PopoverType) {
        withAnimation {
            activePopover = popover
        }
    }

    // Close the active popover
    func closePopover() {
        withAnimation {
            activePopover = nil
        }
    }
}
