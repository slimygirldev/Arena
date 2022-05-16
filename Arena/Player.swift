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
        print("What is your name?")
        var name: String? = readLine()


        if let unwrappedName = name {
            nickName = unwrappedName
            print("Thank you \(unwrappedName). Welcome to the Arene ! \n")

            //ajouter une loop pour vérifier que les deux noms soient différents et comportent au moins 1 caractere
        }
    }
    func summonTeam() {
        playerTeam.creatTeam()
    }
}
