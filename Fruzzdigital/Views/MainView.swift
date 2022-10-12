//
//  MainView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 16/03/1444 AH.
//

import SwiftUI
import Firebase

struct MainView: View {
    
    @ObservedObject private var viewModel = AuthenticationViewModel.shared
    
    var body: some View {
        ZStack {
            if viewModel.isLoggedIn {
                HomeView()
            } else {
                WelcomeView()
            }
        }
        .onAppear {
            if Auth.auth().currentUser != nil {
                DispatchQueue.main.async {
                    viewModel.isLoggedIn = true
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
