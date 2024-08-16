//
//  Enum.swift
//  SwiftGrundlagen
//
//  Created by Lukas Richter on 16.08.24.
//

import Foundation

enum Haustyp: String {
    case einfamilienhaus = "Einfamilienhaus"
    case bunglow = "Bungalow"
    case villa = "Villa"
    
    func beschreibung() -> String {
        switch self {
        case .einfamilienhaus:
            return "Ein einfaches Einfamilenhaus, ideal für eine Familie"
        case .bunglow:
            return "Ein Bungalow, der sich durch seine flache bauweise auszeichnet"
        case .villa:
            return "Eine luxuriöse Villa, perfekt für Menschen, die Komfort lieben"
        }
    }
}
