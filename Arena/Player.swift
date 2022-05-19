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
    var names: [String]

    init(factoGuild: Guild, names: [String]) {
        self.names = names
        self.factoGuild = factoGuild
        playerTeam = Team(guild: factoGuild)
    }

    func choseName() {
        print("What is your name?\n")
        print("➡️ :", terminator: " ")
        while let name = readLine() {
            if names.contains(name) == false {
                names.append(name)
                print("You entered: \(name)")
                break
            } else {
                print("Negative. \"\(name)\" already exits")
            }
        }
    }



    func summonTeam() {
        playerTeam.createTeam()
    }
    func printSummary() {
        print("""
        Resume of the teams : \n
        Team of \(self.nickName) :
        1 . \(self.playerTeam.characters[0].name)
            \(type(of:playerTeam.characters[0])) [\(playerTeam.characters[0].hp)HP]
        2 . \(self.playerTeam.characters[1].name)
        3 . \(self.playerTeam.characters[2].name)
        """)
    }
}
