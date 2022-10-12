//
//  FruzzdigitalApp.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 08/03/1444 AH.
//

import SwiftUI
import Firebase

@main
struct FruzzdigitalApp: App {
    
    init() {
        print("init")
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}
