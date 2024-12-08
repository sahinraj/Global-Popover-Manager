//
//  Global_Popover_ManagerApp.swift
//  Global-Popover-Manager
//
//  Created by sahin raj on 12/8/24.
//

import SwiftUI

@main
struct Global_Popover_ManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(PopoverManager())
        }
        
    }
}
