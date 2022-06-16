//
//  Guild.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Guild {
    // declaraction of a Forge to give a weapon to character jobs
    private var forge: Forge = Forge()

    // MARK: - creat a wwarrior

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
