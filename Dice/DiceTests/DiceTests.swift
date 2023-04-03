//
//  DiceTests.swift
//  DiceTests
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 30.03.23.
//

import XCTest
@testable import Dice

final class DiceTests: XCTestCase {

    func testRoll() throws {
        let dice = Dice(faces: 20)

        for _ in 0...100 {
            let result = dice.roll()
            XCTAssertLessThanOrEqual(result, 20)
            XCTAssertGreaterThanOrEqual(result, 1)
        }
    }
}
