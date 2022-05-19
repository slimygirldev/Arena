//
//  Magus.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Magus: Character {

    override var hp: Int {
        return Int.random(in: 200...275)
    }
    
}
