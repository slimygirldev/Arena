//
//  Team.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 content
 Character1, 2 & 3
 probably fonctions to check if all members are still alive
 */
class Team {

    var factoGuild: Guild
    var characters: [Character]

    init (guild: Guild) {
        self.factoGuild = guild
        characters = []
    }


    func nameCharacter() {
        var characterNickname: String = ""
        print("What's his name ?")
        var name: String? = readLine()


        if let unwrappedName = name {
            characterNickname = unwrappedName
            print("Thank you \(unwrappedName). Welcome to the Arene ! \n")
        }
    }
    func creatTeam() {

        print("""
//Chose the Job of your first fighter : \n
1 . Warrior [HP: 100/100]
    Weapon : Sword [10 pts]\n
2 . Magus [HP: 200/200]
    Weapon : Staff [4 pts]\n
3 . Colossus [HP: 300/300]
    Weapon : Fists [7 pts]\n
4 . Dwarf [HP: 75/75]
    Weapon : Axe [20 pts]\n
""")
        if let choice = readLine() {
            switch choice {
            case "1" :
                //factoGuild.callWarrior()
                characters.append(factoGuild.callWarrior())
                print("You chose a Warrior ! This is a equilibrate class of fighter.")

            case "2" :
                characters.append(factoGuild.callMagus())
                print("You chose a Magus. He has the ability to cast a healing spell.")

            case "3" :
                characters.append(factoGuild.callColossus())
                print("You chose the strong Colossus. He can tank a lot of dammages !")

            case "4" :
                characters.append(factoGuild.callDwarf())
                print("You chose the Dwarf ! He will brings a lot of damages to his target")

             default :
                print("You can only chose between 1, 2, 3 or 4, please enter a correct answer.")
                creatTeam() // reccursive call the function again
            }
        }
    }
}
// test func name unicity
//     func choseName() {
//        while let characterName = readLine() {
//            guard characterName != "quit" else {
//                break
//            }
//
//            if !inputArray.contains(input) {
//                inputArray.append(input)
//                print("Your name is \(nickname)")
//            } else {
//                print("Negative. \"\(nickname)\" already exits")
//            }
//
//            print()
//            print("Tape your name:")
//        }



