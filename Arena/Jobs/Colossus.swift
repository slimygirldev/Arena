//
//  Colossus.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Colossus: Character {

    override var hp: Int {
        return Int.random(in: 300...375)
    }
}
