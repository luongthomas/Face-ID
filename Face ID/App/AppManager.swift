//
//  AppManager.swift
//  Face ID
//
//  Created by Thomas Luong on 1/3/25.
//

import Foundation

public final class AppManager: ObservableObject {
    
    @Published var currentView: AppView = .homeScreen
    
    
    enum AppView {
        case lockScreen
        case homeScreen
    }
}
