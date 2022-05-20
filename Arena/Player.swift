//
//  Player.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Player {
    var nickName: String = ""
    var playerTeam: Team
    var factoGuild: Guild

    init(factoGuild: Guild) {
        self.factoGuild = factoGuild
        playerTeam = Team(guild: factoGuild)
    }

    func choseName() {
        print("===========")
        print("What is your name?\n")
        print("➡️ :", terminator: " ")

        while let name = readLine() {
            if Game.uniqname.contains(name) == false {
                Game.uniqname.append(name)
                nickName = name
                break
            } else {
                print("Negative. \"\(name)\" already exits. \nEnter another name. \n➡️ :", terminator: " ")
            }
        }
    }

    func summonTeam() {
        playerTeam.createTeam()
    }
    func printSummary() {
        print("""
        Resume of the teams : \n
        ===========
        Team of \(self.nickName) :
        1 . \(self.playerTeam.characters[0].name)
            \(type(of: playerTeam.characters[0])) [\(playerTeam.characters[0].hp)HP]
            \(type(of: playerTeam.characters[0].weapon))
        2 . \(self.playerTeam.characters[1].name)
            \(type(of: playerTeam.characters[1])) [\(playerTeam.characters[1].hp)HP]
            \(type(of: playerTeam.characters[1].weapon))
        3 . \(self.playerTeam.characters[2].name)
            \(type(of: playerTeam.characters[2])) [\(playerTeam.characters[2].hp)HP]
            \(type(of: playerTeam.characters[2].weapon))
        ===========
        """)
        // FIXME: implement a loop to avoid repetition
    }
}
