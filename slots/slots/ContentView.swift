//
//  ContentView.swift
//  slots
//
//  Created by Jonas Knudsen on 2/26/21.
//

import SwiftUI

struct ContentView: View {
    @State var credits: Int = 1000
    
    @State var imgArray = ["apple", "cherry", "star"]
    @State var slotInts = Array(repeating: 0, count: 3)

    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding(.top, 30.0)
            
            Spacer()
            
            // HStack for credits + label
            HStack {
                Text("Credits:")
                Text(String(credits))
            }
            
            Spacer()
            
            // HStack for apples
            HStack {
                Image(imgArray[slotInts[0]])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(imgArray[slotInts[1]])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(imgArray[slotInts[2]])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
            
            Spacer()
            
            Button("Spin") {
                let firstInt = Int.random(in: 0...2)
                let secondInt = Int.random(in: 0...2)
                let thirdInt = Int.random(in: 0...2)
                
                slotInts = [firstInt, secondInt, thirdInt]
                
                // now, check for equality
                if firstInt == secondInt && secondInt == thirdInt {
                    credits += 10
                } else {
                    credits -= 5
                }
            }
            .padding(.horizontal, 40.0)
            .padding(.vertical, 10.0)
            .background(Color.red)
            .foregroundColor(.white)
            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            .cornerRadius(40)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
