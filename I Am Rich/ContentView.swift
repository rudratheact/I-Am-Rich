//
//  ContentView.swift
//  I Am Rich
//
//  Created by Rudra Misra on 7/19/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.90, green: 0.49, blue: 0.13)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                )
                Divider()
                Divider()
                Divider()
                Text("Hello, World!")
                    .font(Font.custom("HomemadeApple-Regular", size: 48 ))
                    .foregroundColor(Color(red: 0.75, green: 0.22, blue: 0.17))
                    .bold()
                Spacer()
                CapsulView(text: "Welcome to my 1st App", color: .white)
                CapsulView(text: "Another capsul button view", color: .secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CapsulView: View {
    let text:String
    let color:Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(color)
            .overlay(Text(text)
                .font(.subheadline)
                .fontWeight(.black)
                .italic())
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
