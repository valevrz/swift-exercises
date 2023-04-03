//
//  ContentView.swift
//  Dice
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 30.03.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: DiceViewModel

    var body: some View {
        VStack {

            let sum = viewModel.diceSum()
            Text("Dice sum: \(sum)")
                .font(.title2)

            HStack{

                ForEach(viewModel.dice, id: \.self) { value in
                    Text("\(value)")
                        .font(.largeTitle)
                        .padding(.horizontal, 20.0)
                        .padding(.vertical, 5.0)
                        .border(Color.purple, width: 2)
                }
            }

            HStack{
                Button("roll") {
                    viewModel.rollDice()
                }
                .padding(.all)
                .accentColor(.purple)
                .border(Color.purple, width: 2)

                Button("add Dice") {
                    viewModel.addDice()
                }
                .padding(.all)
                .accentColor(.purple)
                .border(Color.purple, width: 2)

                Button("delete Dice") {
                    viewModel.deleteDice()
                }
                .padding(.all)
                .accentColor(.purple)
                .border(Color.purple, width: 2)
            }
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: DiceViewModel(numberOfDice: 2))
        }
    }
}
