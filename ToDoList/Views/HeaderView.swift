//
//  HeaderView.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
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
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
