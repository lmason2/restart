//
//  ContentView.swift
//  Restart
//
//  Created by Luke Mason on 12/21/21.
//

import SwiftUI

struct ContentView: View {
    // 1. Property Wrapper "AppStorage" - Will use user's default storage
        // Store value on device storage
    // 2. User Defaults Key "onboarding" - Let's us access value in app storage
    // 3. Property name isOnboardingViewActive - name of variable
    // 4. Value true - Default value of the app storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            }
            else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
