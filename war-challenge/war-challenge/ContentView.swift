//
//  ContentView.swift
//  war-challenge
//
//  Created by Jonas Knudsen on 2/26/21.
//

import SwiftUI

struct ContentView: View {
    
    // current cards
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    
    // scores
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                // title pic
                Image("logo")
                
                Spacer()
                
                // two cards
                HStack {
                    Spacer()
                    Image(playerCard)      // player
                    Spacer()
                    Image(cpuCard)          // cpu
                    Spacer()
                }
                
                Spacer()
                
                // deal button
                Button(action: {
                    
                    // Generate a random number between 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                // scores
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
