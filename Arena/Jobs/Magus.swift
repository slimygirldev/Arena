//
//  Magus.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Magus: Character {
    //
    private var pv: Int
    //
    private var currentPv: Int
    //override of the currentHP variable of mother class
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
        // init of this class who prevent a randomise hp at every rounds
        //random hp given at the creation of a character de type Warrior
        //overriding Character values
        let hp: Int = Int.random(in: 75...80)// 175 200
        pv = hp
        currentPv = hp
        super.init(weapon: weapon)
    }
    
    override func actionChoices() -> Int {
        //func call in choseAction() who gonna return an Integer who determine possible results and print actual choices a character of this class can have
        print("1 . 💥 Attack \n2 . ✨ Healing Spell \n3 . ❌ Pass ...")
        return 3
    }
    // function of healing spell, using the parameter given by the function choseTarget() in the fight() flow
    func heal(targetCharacter: Character) {
        //variable contents the random Int of the heal points
        let healPower: Int = Int.random(in: 10...25)
        
        // Calculate the maxHeal of the game and attributed to the bestHealer character
        if Statistics.sharedInstance.maxHeal < healPower {
            Statistics.sharedInstance.maxHeal = healPower
            Statistics.sharedInstance.bestHealer = self
        }
        // condition to heal only target who's still alive or returning the maxHp to prevent currentHp being supperior to maxHp
        // condition to avoid over healing on a character
        if targetCharacter.currentHp + healPower > targetCharacter.maxHp {
            targetCharacter.currentHp = targetCharacter.maxHp
            // condition to heal only character when his cureentHp inferior to maxHp value
        } else if targetCharacter.currentHp < targetCharacter.maxHp {
            targetCharacter.currentHp = targetCharacter.currentHp + healPower
        } else {
            //if the heal is superior to maxhp give maxHp to currentHp
            targetCharacter.currentHp = targetCharacter.maxHp
        }
        //resume of the action
        print("Healing spell restores \(healPower) HP to \(targetCharacter.name). It's HP are [\(targetCharacter.currentHp)/\(targetCharacter.maxHp)] now !")
        print("===========")
    }
    
}
