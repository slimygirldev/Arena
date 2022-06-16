//
//  Staff.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Staff: Weapon {
    override var name: String {
        return "Staff"
    }
    override var damages: Int {
        let smash: Int = Int.random(in: 4...7)
        if smash == 7 {
            print("CRITICAL HIT")
        }
        return smash
    }
}
