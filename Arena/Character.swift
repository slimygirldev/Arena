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

    var currentHp: Int = 0
    
    var maxHp: Int {
        return 0
    }

    init(weapon: Weapon) {
        self.weapon = weapon
    }

}
