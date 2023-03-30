#!/usr/bin/swift

var arguments: [String] = CommandLine.arguments
arguments.remove(at: 0)
let length: Int = (arguments.count) - 1
let randomNumber: Int = Int.random(in: 0...length)
print("Das zufällig zurückgegebene Wort lautet: \(arguments[randomNumber])")