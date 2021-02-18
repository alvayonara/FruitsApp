//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Alva Yonara Puramandya on 18/02/21.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
