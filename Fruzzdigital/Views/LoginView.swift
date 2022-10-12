//
//  LoginView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject private var viewModel = AuthenticationViewModel.shared
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var emailError: Bool = false
    @State private var passwordError: Bool = false
  
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 0) {
                BackButton(action: dismiss)
                    .padding(.bottom, 28)
                
                Text("Welcome back! Glad to see you. Again!")
                    .frame(width: 280)
                    .foregroundColor(.dark)
                    .font(.urbanist700f)
                    .padding(.bottom, 32)
                
                VStack(spacing: 15) {
                    CustomTextField(title: "Enter your email", text: $email, error: emailError)
                    CustomTextField(title: "Enter your password", text: $password, imageName: "showPassword", password: true, error: passwordError)
                }
                .padding(.bottom, 15)
                
                
                HStack(spacing: 0) {
                    Spacer()
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot Password?")
                            .foregroundColor(.gray)
                            .font(.urbanist600)
                            .padding(.bottom, 30)
                    }
                }
                
                CustomActionButton(title: "Login", action: login, isDisabled: !isValid())
                    .padding(.bottom, 35)

                SocialsAuthView(title: "Or Login with")
                
                Spacer()
            }
            HStack{
                Text("Don't have an account?")
                    .foregroundColor(Color .dark)
                    .font(.urbanist700)
                Button(action: {}){
                    Text("Register Now")
                        .foregroundColor(Color .primary1)
                        .font(.urbanist700)
               }
            }
        }
        .padding(.horizontal, 22)
        .padding(.top, 12)
        .padding(.bottom, 26)
        .navigationBarHidden(true)
        .alert(viewModel.loginErrorText, isPresented: $viewModel.showingLoginAlert) {
            Button("Try Again", role: .cancel, action: {
                viewModel.showingLoginAlert.toggle()
            })
        }
        .onChange(of: email) { newValue in
            let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
            emailError = !emailPredicate.evaluate(with: email)
        }
        .onChange(of: password) { newValue in
            if newValue.count < 6 {
                passwordError = true
            } else {
                passwordError = false
            }
        }
    }
    
    private func login() {
        viewModel.login(email: email, password: password)
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
