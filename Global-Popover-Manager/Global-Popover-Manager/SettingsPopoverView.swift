//
//  SettingsPopoverView.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

struct SettingsPopoverView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.headline)
                .padding()
            Divider()
            Text("Here are your settings options.")
                .padding()
        }
        .frame(width: 300, height: 200)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}

