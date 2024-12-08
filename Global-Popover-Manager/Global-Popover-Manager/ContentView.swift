//
//  ContentView.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var popoverManager: PopoverManager

    var body: some View {
        GlobalPopoverView {
            VStack(spacing: 20) {
                Button("Show Settings") {
                    popoverManager.showPopover(.settings)
                }
                .buttonStyle(PrimaryButtonStyle())

                Button("Show Profile") {
                    popoverManager.showPopover(.profile)
                }
                .buttonStyle(PrimaryButtonStyle())

                Button("Show Notifications") {
                    popoverManager.showPopover(.notifications)
                }
                .buttonStyle(PrimaryButtonStyle())
            }
            .padding()
        }
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue.opacity(configuration.isPressed ? 0.7 : 1))
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
