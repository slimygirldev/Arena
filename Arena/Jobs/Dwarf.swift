//
//  Dwarf.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Dwarf: Character {
    private var pv: Int

    private var currentPv: Int

    override var currentHp: Int {
        get {
            return currentPv
        }
        set {
            self.currentPv = newValue
        }
    }
    
    override var maxHp: Int {
        return pv
    }

    override init(weapon: Weapon) {
        let hp: Int = Int.random(in: 35...50)//50 75
        pv = hp
        currentPv = hp
        super.init(weapon: weapon)
    }
    override func actionChoices() -> Int {
        print("1 . 💥 Attack \n2 . ❌ Pass ...")
        return 2
    }
}
