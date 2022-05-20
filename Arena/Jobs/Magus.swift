//
//  Magus.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Magus: Character {

    var pv: Int

    override var maxHp: Int {
        return pv
    }

    override init(weapon: Weapon) {
        let hp: Int = Int.random(in: 100...175)
        pv = hp
        super.init(weapon: weapon)
    }

}
