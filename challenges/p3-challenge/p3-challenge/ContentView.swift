//
//  ContentView.swift
//  p3-challenge
//
//  Created by Jonas Knudsen on 2/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .foregroundColor(Color.white)
            .padding()
            .background(Color.green)
            .cornerRadius(15)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
