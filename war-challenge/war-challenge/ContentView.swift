//
//  ContentView.swift
//  war-challenge
//
//  Created by Jonas Knudsen on 2/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            // title pic
            Image("logo")
            Spacer()
            
            // two cards
            HStack {
                Image("card3")
                    .padding(25)
                Image("card4")
                    .padding(25)
            }
            Spacer()
            
            // deal button
            Image("dealbutton")
            Spacer()
            
            // scores
            HStack {
                Spacer()
                VStack {
                    Text("Player")
                        .padding(3)
                    Text("0")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                VStack {
                    Text("CPU")
                        .padding(3)
                    Text("0")
                        .font(.title)
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            Spacer()
        }
        .background(Image("background")
                        .ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, edges: /*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
