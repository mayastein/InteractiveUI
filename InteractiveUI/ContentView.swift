//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maya Stein on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var fName=""
    @State private var lName=""
    @State private var title="What is your name?"
    @State private var presentA=false
    @State private var bTitle="What is your birthday?"
    @State private var date=Date()
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color(hue: 0.611, saturation: 0.44, brightness: 0.784))
            TextField("Type your first name here", text: $fName)
                .padding(.all)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.blue, width:1)
                .foregroundColor(Color(red: 0.64, green: 0.513, blue: 0.711))
            TextField("Type your last name here", text: $lName)
                .padding(.all)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.blue, width:1)
                .foregroundColor(Color(red: 0.64, green: 0.513, blue: 0.711))
            Button("Submit Name") {
                presentA=true
                title="Hello There, \(fName) \(lName)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Text(bTitle).font(.title)
                .fontWeight(.black)
                .foregroundColor(Color(hue: 0.611, saturation: 0.44, brightness: 0.784))
                .padding(.top)
            DatePicker(
                "Birthday",
                selection: $date,
                displayedComponents: [.date])
            .foregroundColor(Color(hue: 0.774, saturation: 0.31, brightness: 0.686))
            .font(.title2)
            Button("Submit Date") {
                presentA=true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
        .alert("Got it!", isPresented: $presentA, actions:{
            
        })
        .padding(.all)
    }
}

#Preview {
    ContentView()
}
