//
//  ContentView.swift
//  test
//
//  Created by Jonas Knudsen on 2/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello!")
            .padding()
            .background(Color.green
                            .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/))
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
