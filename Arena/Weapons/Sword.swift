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
    
    override var damages: Int {
        return Int.random(in: 10...15)
    }
}
