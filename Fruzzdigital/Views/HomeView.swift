//
//  HomeView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 16/03/1444 AH.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    @ObservedObject private var viewModel = AuthenticationViewModel.shared
    
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.largeTitle)
            
            Text("email: \(Auth.auth().currentUser?.email ?? "nil")")
            Text("username: \(Auth.auth().currentUser?.displayName ?? "nil")")
            
            CustomActionButton(title: "Logout", action: logout)
        }
        .padding(22)
       
    }
    
    private func logout() {
        do {
            try Auth.auth().signOut()
            viewModel.isLoggedIn = false
        } catch {
            print(error.localizedDescription)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
