#!/usr/bin/swift
var words: [String] = []

for i: Int in 0...5 {
    print("Enter a word: ")
    let word: String = String(readLine() ?? "")
    words.append(word)
}


let randomNumber: Int = Int.random(in: 0...5)

print("Das zufällig zurückgegebene Wort lautet: \(words[randomNumber])")