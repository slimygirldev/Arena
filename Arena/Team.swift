//
//  Team.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Team {
    private var factoGuild: Guild
    private(set) var characters: [Character]
    
    init (guild: Guild) {
        // Team init with the Game's guild in parameter
        self.factoGuild = guild
        // Team init with an array of characters who gonna contains the characters called in callCharacter()
        characters = []
    }
    
    func createTeam() {
        var i: Int = 0
        //defines the number of characters needed in the team with the condition
        while (i <= 2) {
            // until the team contains 3 member call the fonction :
            callCharacter()
            //add a character in the team
            i = i + 1
        }
    }
    
    func nameCharacter(member: Character) {
        print("What's his name?\n")
        print("➡️ :", terminator: " ")
        // loop who checks the names of character refering to the array of uniqname, like name of the Player
        while let name = readLine() {
            if Game.uniqname.contains(name) == false {
                Game.uniqname.append(name)
                member.name = name
                // when a character is named it initialising the dictionary using name as key and passing O to starter value (numberOfTimeCharaPlayed) ;
                //it will add every name of character created using this function and init its played value to 0
                Statistics.sharedInstance.numberOfTimeCharaPlayed[name] = 0
                print("\(name) joins you !\n")
                break
            } else {
                print("Negative. \"\(name)\" already exits. \nEnter another name. \n➡️ :", terminator: " ")
            }
        }
    }
    
    func callCharacter() {
        // print of different Jobs to chose for the character creation
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
        print("➡️ :", terminator: " ")
        if let choice = readLine() {
            var teamMember: Character
            
            switch choice {
            case "1" :
                //factoGuild.callWarrior() creates a warrior if input is 1, etc for other choices, by default the user has to enter a number between 1...4
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

