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
    
    private var weapon: Weapon
    var name: String = ""
    var currentHp: Int {
        get {
            return 0
        }
        set {
            self.currentHp = newValue
        }
    }
    
    var maxHp: Int {
        return 0
    }
    
    init(weapon: Weapon) {
        self.weapon = weapon
    }
    // func for set number of choices of actions per jobs
    func actionChoices() -> Int {
        print("")
        return 0
    }
    
    func attack(targetAttak: Character) {
        
        let damages: Int = weapon.damages
        
        // Calculate the max damage of the game party and the chara who did it
        if Statistics.sharedInstance.maxDamages < damages {
            Statistics.sharedInstance.maxDamages = damages
            Statistics.sharedInstance.maxDamagesChara = self
        }
        
        targetAttak.currentHp = targetAttak.currentHp - damages
        // condition of member dead
        print("\(targetAttak.name) lose \(damages)")
        if targetAttak.currentHp <= 0 {
            targetAttak.currentHp = 0
            print("\(targetAttak.name) faints 💀")
        } else {
            print("\(targetAttak.name) is hurt, it's HP are [\(targetAttak.currentHp)/\(targetAttak.maxHp)] now ...")
        }
        print("===========")
    }
}
