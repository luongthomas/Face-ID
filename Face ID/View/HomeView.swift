//
//  HomeView.swift
//  Face ID
//
//  Created by Thomas Luong on 1/3/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appManager: AppManager
    
    var body: some View {
        
        VStack {
            Text("Welcome back to the App")
            
            Button {
                // Lock App
                appManager.currentView = .lockScreen
            } label: {
                Text("Press to lock the App")
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
