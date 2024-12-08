//
//  ProfilePopoverView.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

struct ProfilePopoverView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.headline)
                .padding()
            Divider()
            Text("User profile details go here.")
                .padding()
        }
        .frame(width: 300, height: 200)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}
