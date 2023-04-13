//
//  DiceViewModel.swift
//  Dice
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 13.04.23.
//

import Foundation
import SwiftUI

class DiceViewModel: ObservableObject {
    @Published var dice: [Int]
    @Published var faces: Int

    init(numberOfDice: Int, faces: Int) {
        self.dice = []
        self.faces = faces
        for _ in 0..<numberOfDice {
            self.dice.append(Int.random(in: 1...faces))
        }
    }

    func rollDice() {
        dice = dice.map { _ in Int.random(in: 1...faces) }
    }

    func addDice() {
        if dice.count < 6 {
            dice.append(Int.random(in: 1...faces))
        }
    }

    func deleteDice() {
        if dice.count > 0 {
            dice.remove(at: 0)
        }
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
