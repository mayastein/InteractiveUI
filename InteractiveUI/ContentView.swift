//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maya Stein on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name=""
    @State private var title="What is your name?"
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color(hue: 0.611, saturation: 0.44, brightness: 0.784))
            TextField("Type your name here", text: $name)
                .padding(.all)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.blue, width:1)
            Button("Submit Name") {
                title="Hello There, \(name)!"
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
