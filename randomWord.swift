#!/usr/bin/swift

CommandLine.arguments.remove(at: 0)
let length: Int = CommandLine.arguments.count
let randomNumber: Int = Int.random(in: 0...length)
print("Das zufällig zurückgegebene Wort lautet: \(CommandLine.arguments[randomNumber])")