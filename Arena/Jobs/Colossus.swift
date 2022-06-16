//
//  Colossus.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Colossus: Character {
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
        let hp: Int = Int.random(in: 80...100)//200 240
        pv = hp
        currentPv = hp
        super.init(weapon: weapon)
    }
    override func actionChoices() -> Int {
        print("1 . 💥 Attack \n2 . ❌ Pass ...")
        return 2
    }
}
