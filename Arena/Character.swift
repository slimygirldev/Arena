//
//  Character.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 content nickName WARNING : adding the fact that you can't name a character twice the same

 */
class Character {

    var weapon: Weapon

    var name: String = ""

    // hp who gonna change during fight
    var currentHp: Int {
        return 0
    }

    //max hp of character
    var hp: Int {
        return 0
    }

    init(weapon: Weapon) {
        self.weapon = weapon
    }

}
