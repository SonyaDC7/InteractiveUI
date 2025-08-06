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
    @State private var date = ""
    
    var body: some View {
        VStack { //start vstack
            Text("What is your name?")
                .font(.title)
            
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Text("What is your birthday?")
                .font(.title)
            
            TextField("MM/DD/YYYY...", text: $date)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            
            Button("Submit Information") {
                if name == "" {print("**required field")}
                else {
                    print("Welcome, \(name)! You were born on \(date).")}
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
