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
        return Int.random(in: 20...27)
    }
}
