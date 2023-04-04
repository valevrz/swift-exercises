//
//  DiceTests.swift
//  DiceTests
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 30.03.23.
//

import XCTest
@testable import Dice

final class DiceTests: XCTestCase {

    func testInit() {
        let dice = DiceViewModel(numberOfDice: 3, faces: 6).dice
        let numOfDices = dice.count
        XCTAssertEqual(numOfDices, 3)
    }

    func testRollDice() {
        let viewModel = DiceViewModel(numberOfDice: 1, faces: 6)

        for _ in 0...50 {
            let dice = viewModel.dice
            viewModel.rollDice()
            let result = dice[0]
            XCTAssertLessThanOrEqual(result, 6)
            XCTAssertGreaterThanOrEqual(result, 1)
        }
    }

    func testAddDice() {
        let viewModel = DiceViewModel(numberOfDice: 3, faces: 6)
        let oldDiceCount = viewModel.dice.count
        viewModel.addDice()
        let newDiceCount = viewModel.dice.count
        XCTAssertNotEqual(oldDiceCount, newDiceCount)
    }

    func testDeleteDice() {
        let viewModel = DiceViewModel(numberOfDice: 2, faces: 6)
        let oldDiceCount = viewModel.dice.count
        viewModel.deleteDice()
        let newDiceCount = viewModel.dice.count
        XCTAssertNotEqual(oldDiceCount, newDiceCount)
    }

    func testDiceSum() {
        let viewModel = DiceViewModel(numberOfDice: 3, faces: 6)
        let diceSum = viewModel.diceSum()
        XCTAssertEqual(diceSum, viewModel.dice.reduce(0, +))
    }
}
