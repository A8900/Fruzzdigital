//
//  AuthenticationViewModel.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 16/03/1444 AH.
//

import Firebase
import SwiftUI

class AuthenticationViewModel: ObservableObject {
    
    public static let shared = AuthenticationViewModel()
    
    @Published public var isLoggedIn: Bool = false
    @Published public var showingLoginAlert: Bool = false
    @Published public var loginErrorText: String = ""
    
    @Published public var showingRegisterAlert: Bool = false
    @Published public var registerErrorText: String = ""
    
    public func login(email: String, password: String) {
        Task {
            do {
                try await Auth.auth().signIn(withEmail: email, password: password)
                DispatchQueue.main.async {
                    self.isLoggedIn = true
                }
            } catch {
                DispatchQueue.main.async {
                    self.loginErrorText = error.localizedDescription
                    self.showingLoginAlert.toggle()
                }
            }
        }
    }
    
    public func register(username: String, email: String, password: String) {
        Task {
            do {
                try await Auth.auth().createUser(withEmail: email, password: password)
                
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                try await changeRequest?.commitChanges()
                DispatchQueue.main.async {
                    self.isLoggedIn = true
                }
            } catch {
                DispatchQueue.main.async {
                    self.registerErrorText = error.localizedDescription
                    self.showingRegisterAlert.toggle()
                }
            }
            
        }
    }
    
}
