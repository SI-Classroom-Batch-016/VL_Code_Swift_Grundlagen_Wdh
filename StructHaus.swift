//
//  StructHaus.swift
//  SwiftGrundlagen
//
//  Created by Lukas Richter on 16.08.24.
//

import Foundation

struct Haus: HausProtokoll {
    var breite: Int
    var höhe: Int
    var typ: Haustyp
    
    func beschreibung() -> String {
        return """
Haustyp: \(typ.rawValue)
Breite: \(breite)
Höhe: \(höhe)
Beschreibung: \(typ.beschreibung())
"""
    }
    
    func anzahlfenster() -> Int {
        return 7
    }
    
    func anzahlTüren() -> Int {
        return 1
    }
    
    func berechnenWert() -> Double {
        let basisPreis: Double
        
        switch typ {
        case .einfamilienhaus:
            basisPreis = 100_000.00
        case .bunglow:
            basisPreis = 120_000.00
        case .villa:
            basisPreis = 200_000.00
        }
        return basisPreis * Double(breite * höhe)
    }
}
