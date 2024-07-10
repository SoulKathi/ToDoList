//
//  LogInView.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import SwiftUI

struct LogInView: View {
    @StateObject var viewModel = LogInViewViewModel()
    //@State var email = ""
    //@State var password = ""
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                /*ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.pink)
                        .rotationEffect(Angle(degrees: 15))

                    
                    VStack {
                        Text("To Do List")
                            .font(.system(size: 50))
                            .foregroundColor(Color.white)
                            .bold()
                        
                        Text("Get things done")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                    }
                    .padding(.top, 30)
                }
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .offset(y: -100)*/
                
                // Login Form
                
                
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        //.textFieldStyle(RoundedBorderTextFieldStyle())
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        //.autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        //.textFieldStyle(RoundedBorderTextFieldStyle())
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    /*Button {
                        // Attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }*/
                    TLButton(title: "Log In", background: .blue) {
                        // Attempt login
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    /*Button("Create An Account") {
                        // Show registration
                    }*/
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LogInView()
}
