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

    func callWarrior() -> Warrior {
        return Warrior()
    }

    // MARK: - creat a Magus

    func callMagus() -> Magus {
        return Magus()
    }

    // MARK: - creat a Colossus
    
    func callColossus() -> Colossus {
        return Colossus()
    }

    // MARK: - creat a Dwark

    func callDwarf() -> Dwarf{
        return Dwarf()
    }
}
