//
//  Calligo_NavApp.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI
import Firebase



@main
struct Calligo_NavApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @StateObject var launchScreenManager = LaunchScreenManager()
  
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                AuthView()
                if launchScreenManager.state != .completed {
                    LaunchScreenView()
                }
            }
           .environmentObject(launchScreenManager)
           
                
        }
    }
}
