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

    func createTeam() {
        var i: Int = 0
        while (i <= 2) {
            callCharacter()
            i = i + 1
        }
//Character name + job
    }

    func nameCharacter(member: Character) {
        var characterNickname: String = ""

        print("What's his name ?")
        var name: String? = readLine()

        if let unwrappedName = name {
            print("\(unwrappedName) joins you !\n")
            member.name = unwrappedName
            print()
        }

    }

    func callCharacter() {
        print("""
1 . Warrior [HP: 100 - 175]
    💥 Sword [10 - 15 pts]\n
2 . Magus [HP: 200 - 275]
    💥 Staff [2 - 4 pts]\n
3 . Colossus [HP: 300/300]
    💥 Fists [4 - 7 pts]\n
4 . Dwarf [HP: 50 - 75]
    💥 Axe [20 - 27 pts]\n
""")
        if let choice = readLine() {
            var teamMember: Character

            switch choice {
            case "1" :
                //factoGuild.callWarrior()
                teamMember = factoGuild.callWarrior()
                characters.append(teamMember)
                print("You chose a Warrior ! This is a equilibrate class of fighter.\n")
                nameCharacter(member: teamMember)
            case "2" :
                teamMember = factoGuild.callMagus()
                characters.append(teamMember)
                print("You chose a Magus. He has the ability to cast a healing spell.\n")
                nameCharacter(member: teamMember)

            case "3" :
                teamMember = factoGuild.callColossus()
                characters.append(teamMember)
                print("You chose the strong Colossus. He can tank a lot of dammages !\n")
                nameCharacter(member: teamMember)

            case "4" :
                teamMember = factoGuild.callDwarf()
                characters.append(teamMember)
                print("You chose the Dwarf ! He will brings a lot of damages to his target\n")
                nameCharacter(member: teamMember)

            default :
                print("You can only chose between 1, 2, 3 or 4, please enter a correct answer.\n")
                callCharacter() // reccursive call the function again
            }
        }
    }
}

/*
 func nameCharacter() {

 var characters: [Character]
 var characterName: String = ""
 print("What's is name?")

 while let characterName = readLine() {
 guard characterName != "quit" else {
 break
 }
 if !characters.contains(characterName) {
 characters.append(characterName)
 print("Your name is \(characterName)")
 } else {
 print("Negative. \"\(characterName)\" already exits")
 }
 print("Enter a new name :")
 nameCharacter()
 }
 */


