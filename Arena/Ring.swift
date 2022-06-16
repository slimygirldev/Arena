//
//  Ring.swift
//  Arena
//
//  Created by Lorene Brocourt on 22/05/2022.
//

import Foundation

class Ring {

    var playerOne: Player
    var playerTwo: Player
    var turnNumber = 0


    init(fighter1: Player, fighter2: Player) {
        self.playerOne = fighter1
        self.playerTwo = fighter2
    }

//    func choseCharacter(player: Player) -> Character? {
//
//        var chosenCharacter: Character?
//
//        print("Chose who gonna play this turn :\n")
//        print ("""
//        1 . \(player.playerTeam.characters[0].name) - \(type(of: player.playerTeam.characters[0])) [\(player.playerTeam.characters[0].currentHp)HP] || 2 . \(player.playerTeam.characters[1].name) - \(type(of: player.playerTeam.characters[1])) [\(player.playerTeam.characters[1].currentHp)HP] || 3 . \(player.playerTeam.characters[2].name) - \(type(of: player.playerTeam.characters[2])) [\(player.playerTeam.characters[2].currentHp)HP]
//        """)
//        print("➡️ : ", terminator: " ")
//
//        if let input = readLine() {
//
//            if input == "1" {
//                chosenCharacter = player.playerTeam.characters[0] // chosenCharacter prend la valeur de input 1 à savoir le chara[0] du player
//                print("What \(player.playerTeam.characters[0].name) gonna do?")
//            } else if input == "2" {
//                chosenCharacter = player.playerTeam.characters[1]
//                print("What \(player.playerTeam.characters[1].name) gonna do?")
//            } else if input == "3" {
//                chosenCharacter = player.playerTeam.characters[2]
//                print("What \(player.playerTeam.characters[2].name) gonna do?")
//            } else {
//                print("You need to chose between 1, 2 or 3.")
//                self.choseCharacter(player: player)
//            }
//        }
//        return chosenCharacter // valeur de retour de type :Character
//    }

//    func choseAction(player: Player) {
//        print ("""
//            1 . 💥 Attack
//            2 . ✨ Healing Spell
//            3 . ❌ Pass ...
//            """)
//        print("➡️ : ", terminator: " ")
//        if let choseAction = readLine() {
//            switch choseAction {
//            case "1" :
//                choseTarget(player: player)
//
//            case "2" :
//                print("Soin")
//            case "3" :
//                break
//
//            default :
//                self.choseAction(player: player)
//            }
//        }
//    }

//    func choseTarget(player: Player) -> Character? {
//
//        var chosenTarget: Character?
//
//        if turnNumber % 2 == 0 {
//            print ("""
//        1 . \(playerTwo.playerTeam.characters[0].name) - \(type(of: playerTwo.playerTeam.characters[0])) [\(playerTwo.playerTeam.characters[0].currentHp)HP] || 2 . \(playerTwo.playerTeam.characters[1].name) - \(type(of: playerTwo.playerTeam.characters[1])) [\(playerTwo.playerTeam.characters[1].currentHp)HP] || 3 . \(playerTwo.playerTeam.characters[2].name) - \(type(of: playerTwo.playerTeam.characters[2])) [\(playerTwo.playerTeam.characters[2].currentHp)HP]
//
//        """)
//            print("➡️ : ", terminator: " ")
//
//            if let input = readLine() {
//                if input == "1" {
//                    chosenTarget = playerTwo.playerTeam.characters[0]
//                } else if input == "2" {
//                    chosenTarget = playerTwo.playerTeam.characters[1]
//                } else if input == "3" {
//                    chosenTarget = playerTwo.playerTeam.characters[2]
//                }
//            }
//        }
//        return chosenTarget
//    }

//
//    func actions(player: Player) {
//        if let selectedCharacter = choseCharacter(player: player) {
//        }
//        //      var selectedCharacter: Character? = choseCharacter(player: player)
//        choseAction(player: player)
//        //selectedchara.attaK(selectedtargt)
//    }
//
//    func fight() {
//
//        print("You enter the tournament of the Arena. \n")
//        print("Your rival facing you with anger !\n")
//        print("What are you gonna do?\n")
//        print("===========")
//
//        if turnNumber % 2 == 0 {
//            actions(player: playerOne)
//        } else {
//            actions(player: playerTwo)
//        }
//        turnNumber += 1
//    }
}

