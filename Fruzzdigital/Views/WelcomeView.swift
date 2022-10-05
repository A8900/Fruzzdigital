//
//  WelcomeView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 08/03/1444 AH.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    Spacer()
                    Image("logo")
                        .padding(.bottom, 43)
                    
                    
                    VStack(spacing: 15) {
                        NavigationLink(destination: LoginView()) {
                            CustomButton(title: "Login")
                        }
                        
                        Button(action: {}) {
                            Text("Register")
                                .frame(height: 56)
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .font(.urbanist600)
                                .foregroundColor(.black)
                                .cornerRadius(8)
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1))
                        }
                    }

                    Button(action: {}) {
                        Text("Continue as a guest")
                            .foregroundColor(.primary1)
                            .font(.urbanist700)
                    }
                    .padding(.top, 46)
                }
                .padding(.horizontal, 22)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
