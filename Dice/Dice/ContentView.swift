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
                    if value == 1{
                        DiceView(value: 1)
                    }else if value == 2{
                        DiceView(value: 2)
                    }else if value == 3{
                        DiceView(value: 3)
                    }else if value == 4{
                        DiceView(value: 4)
                    }else if value == 5{
                        DiceView(value: 5)
                    }else if value == 6{
                        DiceView(value: 6)
                    }else if value == 7{
                        DiceView(value: 7)
                    }else if value == 8{
                        DiceView(value: 8)
                    }else if value == 9{
                        DiceView(value: 9)
                    }else if value == 10{
                        DiceView(value: 10)
                    }else if value == 11{
                        DiceView(value: 11)
                    }else if value == 12{
                        DiceView(value: 12)
                    }else if value == 13{
                        DiceView(value: 13)
                    }else if value == 14{
                        DiceView(value: 14)
                    }else if value == 15{
                        DiceView(value: 15)
                    }else if value == 16{
                        DiceView(value: 16)
                    }else if value == 17{
                        DiceView(value: 17)
                    }else if value == 18{
                        DiceView(value: 18)
                    }else if value == 19{
                        DiceView(value: 19)
                    }else if value == 20{
                        DiceView(value: 20)
                    }
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
