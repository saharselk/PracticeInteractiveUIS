//
//  ContentView.swift
//  PracticeInteractiveUIS
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color = ""
    @State private var textTitle = "What is your favorite color?"
    @State private var shade = ""
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                .fontWeight(.semibold)
            TextField("Type here...", text:$color)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit Color") {
            
                textTitle = ("Nice! I like \(color) too!")
            }
            .font(.title2)
            .fontWeight(.semibold)
            .tint(.cyan)
            .buttonStyle(.borderedProminent)
            
            Text("Do you like dark \(color) or light \(color)?")
                .font(.title)
                .fontWeight(.semibold)
            TextField("Type here...", text:$shade)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit Shade") {
                textTitle = ("Same! I like \(shade) \(color) too!")
            }
            
            .font(.title2)
            .fontWeight(.semibold)
            .tint(.cyan)
            .buttonStyle(.borderedProminent)
           
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
