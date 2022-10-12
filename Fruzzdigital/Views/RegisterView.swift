//
//  RegisterView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject private var viewModel = AuthenticationViewModel.shared
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @State private var usernameError: Bool = false
    @State private var emailError: Bool = false
    @State private var passwordError: Bool = false
    
    var body: some View {
     VStack{
            VStack(alignment: .leading, spacing: 0) {
                BackButton(action: dismiss)
                
                    .padding(.bottom, 28)
                
                Text("Hello! Register to get started")
                    .font(.urbanist700f)
                    .foregroundColor(.dark)
                    .padding(.bottom, 32)
                
                VStack (spacing: 12) {
                    CustomTextField(title: "Username", text: $username, error: usernameError)
                    CustomTextField(title: "Email", text: $email, error: emailError)
                    CustomTextField(title: "Password", text: $password, imageName: "showPassword", password: true , error:passwordError)
                    CustomTextField(title: "Confirm Password", text: $confirmpassword, imageName: "showPassword", password: true)
                }
                .padding(.bottom, 30)
                
                CustomActionButton(title: "Register", action: register, isDisabled: !isValid())
                   .padding(.bottom, 35)
               
                SocialsAuthView(title: "Or Register with")
                
                Spacer()
            }
                HStack {
                Text("Already have an account?")
                        .foregroundColor(Color .dark)
                        .font(.urbanist700)
                    
                Button(action: {}) {
                    Text("Login Now")
                        .foregroundColor(Color .primary1)
                        .font(.urbanist700)
                }
                
              }
            }
            .padding(.horizontal, 22)
            .padding(.top, 12)
            .padding(.bottom, 26)
            .navigationBarHidden(true)
            .alert(viewModel.registerErrorText, isPresented: $viewModel.showingRegisterAlert) {
                Button("Try Again", role: .cancel, action: {
                    viewModel.showingRegisterAlert.toggle()
                })
            }
            .onChange(of: email) { newValue in
                let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
                emailError = !emailPredicate.evaluate(with: email)
            }
            .onChange(of: username) { newValue in
                if newValue.count < 3 {
                    usernameError = true
                } else {
                    usernameError = false
                }
            }
            .onChange(of: password) { newValue in
                if newValue.count < 6 {
                    passwordError = true
                } else {
                    passwordError = false
                }
            }
    }
    
    private func register() {
        viewModel.register(username: username, email: email, password: password)
    }
    
    private func isValid() -> Bool {
        if emailError || passwordError {
            return false
        }
        if email.count < 5 || password.count < 6 {
            return false
        }
        return true
    }

}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

