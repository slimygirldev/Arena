//
//  Staff.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Staff: Weapon {

    override var damages: Int {
        return Int.random(in: 2...4)
    }
}
