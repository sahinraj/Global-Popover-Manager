//
//  GlobalPopoverView.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

struct GlobalPopoverView<Content: View>: View {
    @EnvironmentObject var popoverManager: PopoverManager
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            content

            // Overlay for active popover
            if let activePopover = popoverManager.activePopover {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        popoverManager.closePopover()
                    }

                popoverContent(for: activePopover)
                    .transition(.scale)
                    .zIndex(1)
            }
        }
    }

    @ViewBuilder
    private func popoverContent(for popover: PopoverManager.PopoverType) -> some View {
        switch popover {
        case .settings:
            SettingsPopoverView()
        case .profile:
            ProfilePopoverView()
        case .notifications:
            NotificationsPopoverView()
        }
    }
}
#Preview {
    
}