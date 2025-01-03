//
//  LockedView.swift
//  Face ID
//
//  Created by Thomas Luong on 1/3/25.
//

import SwiftUI
import LocalAuthentication

struct LockedView: View {
    
    @EnvironmentObject var appManager: AppManager
    
    var body: some View {
        VStack {
            Text("The screen is locked")
            
            Button {
                // unlock app
                authenticate()
            } label: {
                Text("To unlock app, press here")
            }
            .padding()
        }
    }
    
    private func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Face ID required to unlock hidden screen"
        
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, _ in
                if success {
                    // unlock app
                    appManager.currentView = .homeScreen
                } else {
                    // show error message
                }
            }
        }
    }
}

#Preview {
    LockedView()
}
