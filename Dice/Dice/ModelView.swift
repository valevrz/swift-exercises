//
//  ModelView.swift
//  Dice
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 03.04.23.
//

import Foundation
import SwiftUI

class DiceViewModel: ObservableObject {
    @Published var dice: [Int]

    init(numberOfDice: Int) {
        dice = []
        for _ in 0..<numberOfDice {
            dice.append(Int.random(in: 1...6))
        }
    }

    func rollDice() {
        dice = dice.map { _ in Int.random(in: 1...6) }
    }

    func addDice() {
        dice.append(Int.random(in: 1...6))
    }

    func deleteDice() {
        dice.remove(at: 0)
    }

    func diceSum() -> Int{
        let sum = dice.reduce(0, +)
        return sum
    }
}

//struct Dice {
//    var faces: Int
//    func roll() -> Int{
//       Int.random(in: 1...faces)
//    }
//}
