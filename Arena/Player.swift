//
//  Player.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 Player has a Team
 Player has a nickName who must be edited by the player = using readline()
 init the Team
 func creatTeam()
 
 */
class Player {
      var nickName: String = ""

    init() {

    }

    func choseName() {
        print("What is your name?")
        var name: String? = readLine()


        if let unwrappedName = name {
            nickName = unwrappedName
            print("Thank you \(unwrappedName). Welcome to the Arene ! \n")

        }
//        print("Please tape your name and press Enter to validate :")
//        if nickName = readLine() {
//            print("Thank you \(nickName), welcome to the Arena.")
//        } else {
//            print("You have to gave me a name to access the Arena.")
//        }

    }
    private func creatTeam() {
        
    }
}
