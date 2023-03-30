#!/usr/bin/swift
import Foundation

let argument: [String] = CommandLine.arguments
// Name der Textdatei
let fileName: String = argument[1]

// Pfad zur Textdatei im aktuellen Verzeichnis
let currentDirectory: String = FileManager.default.currentDirectoryPath
let filePath: String = currentDirectory + "/" + fileName

// Versuche, den Inhalt der Textdatei zu lesen
do {
    //ließt die Text Datei und speichert den Inhalt in fileContents
    let fileContents: String = try String(contentsOfFile: filePath)

    //jedes Wort aus der Datei wird in dem Array words gespeichert
    let words: [String] = fileContents.components(separatedBy: .whitespacesAndNewlines)

    //ein Wort wird zufällig aus dem Array ausgewählt und in randomWord gespeichert
    let randomWord: String = words.randomElement() ?? ""

    // Gib das Wort aus der Textdatei aus
    print("Das zufällige Wort aus der Textdatei lautet: \(randomWord)")
} catch {
    print("Es gab einen Fehler beim Lesen der Textdatei.")
}
