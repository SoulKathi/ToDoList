//
//  RegisterView.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        }
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            
            TLButton(title: "Create Account", background: .green) {
                // Attempt registration
            }
            .padding()
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
