//
//  main.swift
//  SwiftGrundlagen
//
//  Created by Lukas Richter on 16.08.24.
//

import Foundation

print("Willkommen zum Haus Designer!")
print("Wähle eine Haustyp:")
print("1: Einfamilienhaus")
print("2: Bungalow")
print("3: Villa")

var haustyp: Haustyp

if let eingabeTyp = readLine(), let typNummer = Int(eingabeTyp) {
    switch typNummer {
    case 1:
        haustyp = .einfamilienhaus
    case 2:
        haustyp = .bunglow
    case 3:
        haustyp = .villa
    default:
        print("Ungültie Ausgabe. Der Standard ist Einfamilienhaus")
        haustyp = .einfamilienhaus
    }
    
} else {
    print("Ungültige Eingabe. Standard ist Einfamilienahus")
    haustyp = .einfamilienhaus
}

print("Gib die breite des Hauses ein (mindestens 5): ")
let breite: Int
if let eingabeBreite = readLine(), let breiteEingabe = Int(eingabeBreite), breiteEingabe >= 5 {
    breite = breiteEingabe
} else {
    print("Ungültige Einagbe. Standardbreite ist 7.")
    breite = 7
}

print("Gib die Höhe des Hauses ein (mindestens 3): ")
let höhe: Int

if let eingabeHöhe = readLine(), let eingabeHöhe = Int(eingabeHöhe), eingabeHöhe >= 3 {
    höhe = eingabeHöhe
} else {
    print("Ungültige Eingabe. Standardhöhe ist 4.")
    höhe = 4
}

let haus = Haus(breite: breite, höhe: höhe, typ: haustyp)

print("Hier sind die Details deines Hauses:")
print(haus.beschreibung())
print("Anzahl der Fenster : \(haus.anzahlfenster())")
print("Anzahl der Türen : \(haus.anzahlTüren())")
print("Der geschätze Preis des Hauses beträgt: \(haus.berechnenWert()) Euro")
