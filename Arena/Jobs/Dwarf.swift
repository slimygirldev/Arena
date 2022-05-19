//
//  Dwarf.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Dwarf: Character {

    override var hp: Int {
        return Int.random(in: 50...75)
    }
}
