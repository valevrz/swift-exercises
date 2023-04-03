//
//  DiceApp.swift
//  Dice
//
//  Created by Virzi, Valeria (SE-5/7AFI2) on 30.03.23.
//

import SwiftUI

@main
struct DiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: DiceViewModel(numberOfDice: 2))
        }
    }
}
