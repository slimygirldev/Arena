//
//  Forge.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 is the Factory of the weapons
 content logic to creat weapons
 func creatWeapon()
 */

class Forge {
    // MARK: - Swork creation
    
    func createSword() -> Sword{
        return Sword()
    }
    
    // MARK: - Staff creation
    
    func createStaff() -> Staff{
        return Staff()
    }
    
    // MARK: - Fists creation
    
    func createFists() -> Fists {
        return Fists()
    }
    
    // MARK: - Axe creation
    
    func createAxe() -> Axe {
        return Axe()
    }
}
