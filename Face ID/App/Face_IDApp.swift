//
//  Face_IDApp.swift
//  Face ID
//
//  Created by Thomas Luong on 1/3/25.
//

import SwiftUI

@main
struct Face_IDApp: App {
    
    @StateObject var appManager = AppManager()
    
    var body: some Scene {
        WindowGroup {
            
            Group {
                switch appManager.currentView {
                    case .homeScreen: HomeView()
                    case .lockScreen: LockedView()
                }
            }
            .environmentObject(appManager)
        }
    }
}
