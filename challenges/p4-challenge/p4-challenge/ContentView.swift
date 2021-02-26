//
//  ContentView.swift
//  p4-challenge
//
//  Created by Jonas Knudsen on 2/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                
                VStack {
                    Text("CN Tower")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Text("Toronto")
                }
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .opacity(0.8)
                .foregroundColor(.white)
            }
            
            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                
                VStack {
                    Text("Big Ben")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Text("London")
                }
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .opacity(0.8)
                .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
