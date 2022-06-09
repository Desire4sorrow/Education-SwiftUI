//
//  ContentView.swift
//  TextFieldsViewModifiers
//
//  Created by Omega on 09.06.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var loginText = ""
    @State private var passwordText = ""
    
    @State private var needShowErrorAlert = false
    @State private var needShowNextScreen = false
    @State private var isEditing = false
        
    @State var login = UserDefaults.standard.string(forKey: "login")
    @State var password = UserDefaults.standard.string(forKey: "password")
    
    var loginTextField: some View {
        TextField("Введите логин", text: $loginText) {
            UserDefaults.standard.set(login, forKey: "login")
        }
        .onChange(of: loginText) { newValue in
            login = newValue
        }
    }
    
    var passwordTextField: some View {
        TextField("Введите пароль", text: $passwordText) {
            password = passwordText
            UserDefaults.standard.set(password, forKey: "password")
        }
        .onChange(of: passwordText) { newValue in
            password = newValue
        }
    }
        
    
    var nextButton: some View {
        NavigationLink(destination: ConfirmationCodeView(), isActive: $needShowNextScreen) {
            Button {
                handleCorrectData()
            } label: {
                Text("Далее")
            }
            .alert("Проверьте введенные данные", isPresented: $needShowErrorAlert) {
                Button("OK", role: .cancel) {}
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                if needShowErrorAlert {
                    loginTextField.modifier(ErrorTextFieldModifier())
                    passwordTextField.modifier(ErrorTextFieldModifier())
                } else if isEditing {
                    loginTextField.modifier(ActiveTextFieldModifier())
                    passwordTextField.modifier(ActiveTextFieldModifier())
                } else {
                    loginTextField.modifier(PassiveTextFieldModifier())
                    passwordTextField.modifier(PassiveTextFieldModifier())
                }
                nextButton
            }
            .navigationTitle("Вход в систему")
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
    
    func handleCorrectData() {
        if login != "Admin" || password != "Admin" {
            needShowErrorAlert = true
        } else {
            needShowNextScreen = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
