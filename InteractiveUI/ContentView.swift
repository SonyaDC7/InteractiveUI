//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack { //start vstack
            Text("What is your name?")
                .font(.title)
            
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                if name == "" {print("**field required")}
                else {
                    print("Welcome, \(name)!")}
            }//end button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        } //end vstack
        .padding()
    }
}

#Preview {
    ContentView()
}
