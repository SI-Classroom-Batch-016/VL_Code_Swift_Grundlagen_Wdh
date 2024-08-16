//
//  Protokoll.swift
//  SwiftGrundlagen
//
//  Created by Lukas Richter on 16.08.24.
//

import Foundation

// kann auf klassen, struct und enums angewendent werden
protocol HausProtokoll {
    func beschreibung() -> String
    func anzahlfenster() -> Int
    func anzahlTüren() -> Int
    func berechnenWert() -> Double
}
