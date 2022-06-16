//
//  Sword.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 Sword is the Warrior weapon
 */
class Sword: Weapon {
    
    override var name: String {
        return "Sword"
    }
    override var damages: Int {
        let smash: Int = Int.random(in: 10...30)
        if smash == 30 {
            print("CRITICAL HIT")
        }
        return smash
    }
}
