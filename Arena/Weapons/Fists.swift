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
        return Int.random(in: 4...7)
    }
}
