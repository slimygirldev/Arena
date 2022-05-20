//
//  Guild.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 is the Factory of the chracters
 creat a sort of fighter
 ex : creatWarrior()
 call one of the fighter class
 */

class Guild {
    // MARK: - creat a wwarrior

    var forge: Forge = Forge()

    func callWarrior() -> Warrior {
        return Warrior(weapon: forge.createSword())
    }

    // MARK: - creat a Magus

    func callMagus() -> Magus {
        return Magus(weapon: forge.createStaff())
    }

    // MARK: - creat a Colossus
    
    func callColossus() -> Colossus {
        return Colossus(weapon: forge.createFists())
    }

    // MARK: - creat a Dwark

    func callDwarf() -> Dwarf{
        return Dwarf(weapon: forge.createAxe())
    }
}
