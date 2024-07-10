//
//  RegisterView.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        }
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
