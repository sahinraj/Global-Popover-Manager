//
//  NotificationsPopoverView.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

struct NotificationsPopoverView: View {
    var body: some View {
        VStack {
            Text("Notifications")
                .font(.headline)
                .padding()
            Divider()
            Text("You have new notifications!")
                .padding()
        }
        .frame(width: 300, height: 200)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}
