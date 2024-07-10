//
//  HeaderView.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                //.foregroundColor(Color.pink)
                .foregroundColor(background)
                //.rotationEffect(Angle(degrees: 15))
                .rotationEffect(Angle(degrees: angle))

            
            VStack {
                //Text("To Do List")
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                //Text("Get things done")
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
