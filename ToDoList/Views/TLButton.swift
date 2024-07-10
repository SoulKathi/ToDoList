//
//  TLButton.swift
//  ToDoList
//
//  Created by katja.ruebel on 10.07.24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action : () -> Void
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        //.padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        // Action
    }
}
