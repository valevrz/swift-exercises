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
            Picker("Faces", selection: $viewModel.faces) {
                Text("4").tag(4)
                Text("6").tag(6)
                Text("8").tag(8)
                Text("10").tag(10)
                Text("12").tag(12)
                Text("20").tag(20)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.all)

            let sum = viewModel.diceSum()
            Text("Dice sum: \(sum)")
                .font(.title2)

            HStack{

                ForEach(viewModel.dice, id: \.self) { value in
                    DiceView(value: value)
                }
            }

            HStack{
                Button(action: {
                    viewModel.rollDice()
                }) {
                    Text("roll")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.purple, lineWidth: 2)
                        )
                }

                Button(action: {
                    viewModel.addDice()
                }) {
                    Text("add Dice")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.purple, lineWidth: 2)
                        )
                }

                Button(action: {
                    viewModel.deleteDice()
                }) {
                    Text("delete Dice")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.purple, lineWidth: 2)
                        )
                }
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: DiceViewModel(numberOfDice: 2, faces: 6))
        }
    }
}
