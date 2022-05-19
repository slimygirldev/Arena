//
//  Warrior.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Warrior: Character {

    override var hp: Int {
        return Int.random(in: 100...175)
    }

//    override init() {
//        Int.random(in: 100...175)
//    }
}
