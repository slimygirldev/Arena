//
//  Warrior.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Warrior: Character {
    
    private var pv: Int
    // variable use to stock the setter of currentHp
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
        // init of this class
        //random hp given at the creation of a character de type Warrior
        //overriding Character values
        let hp: Int = Int.random(in: 50...75)//100 145
        //here currentHp receive the maxHp value
        pv = hp
        currentPv = hp
        // super init call the init pf mother class Weapon
        super.init(weapon: weapon)
    }
    // func call in choseAction() who gonna return an Integer who determine possible results and print actual choices a character of this class can have
    override func actionChoices() -> Int{
        print("1 . 💥 Attack \n2 . ❌ Pass ... ")
        return 2
    }
    
}
