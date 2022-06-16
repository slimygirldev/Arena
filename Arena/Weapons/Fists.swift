//
//  Fists.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 Fists is the weapon class of the Colossus Job
 */
class Fists: Weapon {
    
    override var name: String {
        return "Fists"
    }
    override var damages: Int {
        let smash: Int = Int.random(in: 7...15)
        if smash == 15 {
            print("CRITICAL HIT")
        }
        return smash
    }
}
