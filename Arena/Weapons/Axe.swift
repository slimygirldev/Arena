//
//  Axe.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 Axe is the Dwarf weapon
 */
class Axe: Weapon {
    override var name: String {
        return "Axe"
    }
    
    override var damages: Int {
        let smash: Int = Int.random(in: 25...50)
        if smash == 50 {
            print("CRITICAL HIT")
        }
        return smash
    }
}
