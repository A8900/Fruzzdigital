//
//  CustomTextField.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct CustomTextField: View {
    
    let title: String
    @Binding var text: String
    @State private var showPassword: Bool = false
    let imageName: String?
    let password: Bool
    let error: Bool
    
    init(title: String, text: Binding<String>, imageName: String? = nil, password: Bool = false, error: Bool = false) {
        self.title = title
        self._text = text
        self.password = password
        self.imageName = imageName
        self.error = error
    }
    
    var body: some View {
        HStack {
            if password && showPassword == false {
                SecureField(title, text: $text)
                    .font(.urbanist500)
                    .foregroundColor(.gray)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    
            } else {
                TextField(title, text: $text)
                    .font(.urbanist500)
                    .foregroundColor(.gray)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
            Spacer()
            if let imageName = imageName {
                Button(action: {
                    showPassword.toggle()
                }) {
                    Image(imageName)
                }
            }
        }
        .padding(.horizontal, 18)
        .frame(height: 56)
        .background(Color.white2)
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(error ? Color.red : Color.white1, lineWidth: 1))

    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomTextField(title: "Enter your email", text: .constant(""))
            CustomTextField(title: "Enter your password", text: .constant(""), imageName: "person", password: true)
        }
        .padding(22)
        
    }
}
