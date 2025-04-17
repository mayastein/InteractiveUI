//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maya Stein on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("What is your name?")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color(hue: 0.611, saturation: 0.44, brightness: 0.784))
            TextField("Type your name here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.blue, width:1)
            Button("Submit Name") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
        .padding(.all)
    }
}

#Preview {
    ContentView()
}
