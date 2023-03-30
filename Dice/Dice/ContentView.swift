//
//  ContentView.swift
//  Dice
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 30.03.23.
//

import SwiftUI

struct ContentView: View {
    @State var randomNum = 0
    var body: some View {
        VStack {
            Text("You rolled a \(randomNum)")
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button("roll the dice") {
                randomNum = Int.random(in: 1...6)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .accentColor(.purple)
            .border(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            
            

        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
