//
//  Player.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Player {
    private(set) var nickName: String = ""
    private var playerTeam: Team
    private var factoGuild: Guild
    
    init(factoGuild: Guild) {
        // it recieved a guild in parameter, this guild refers to the one instancied in Game
        self.factoGuild = factoGuild
        // at the init of a player, it create a team (who has a guilg in parameter)
        playerTeam = Team(guild: factoGuild)
    }
    
    func choseName() {
        print("===========")
        print("What is your name?\n")
        print("➡️ :", terminator: " ")
        // this loop déclare a variable name, observe the readline input and add it to the array of uniqname with append,
        //It checks with contains, if name is already in it.
        while let name = readLine() {
            if Game.uniqname.contains(name) == false {
                Game.uniqname.append(name)
                nickName = name
                // if name is'nt in the array loop break and exist
                break
            } else {
                // if name is already entered, player stays in the while and has to enter another name until it meets the conditions.
                print("Negative. \"\(name)\" already exits. \nEnter another name. \n➡️ :", terminator: " ")
            }
        }
    }
    
    func summonTeam() {
        playerTeam.createTeam()
    }
    
    func printSummary() {
        // loop to print the characters in the array of team
        print("===========\nTeam of \(self.nickName) :")
        for character in playerTeam.characters {
            print("\(character.name) : \(type(of: character)) - [\(character.currentHp)/\(character.maxHp) HP]")
        }
        print("===========")
    }
    
    func teamAlive() -> Bool {
        // function to check the currentHp of all characters in team of the player
        for character in playerTeam.characters {
            if character.currentHp > 0 {
                return true
            }
        }
        return false
    }
    
    func choseTarget(player: Player) -> Character {
        
        var _: Character
        print("===========")
        print("Chose a target :\n")
        print("""
        Team of your Rival \(player.nickName) :
        1 . \(player.playerTeam.characters[0].name) - \(type(of: player.playerTeam.characters[0])) [\(player.playerTeam.characters[0].currentHp)/\(player.playerTeam.characters[0].maxHp)HP] || 2 . \(player.playerTeam.characters[1].name)  - \(type(of: player.playerTeam.characters[1])) [\(player.playerTeam.characters[1].currentHp)/\(player.playerTeam.characters[1].maxHp)HP] || 3 . \(player.playerTeam.characters[2].name) - \(type(of: player.playerTeam.characters[2])) [\(player.playerTeam.characters[2].currentHp)/\(player.playerTeam.characters[2].maxHp)HP]
        """)
        print("➡️ : ", terminator: " ")
        
        let input = Game.getInput(numberOfInput: 3)
        if input == 1 {
            
            if player.playerTeam.characters[0].currentHp == 0 {
                print("\(player.playerTeam.characters[0].name) has no HP left ... he has fallen in the fight. \nChose another fighter who is still alive.")
                return self.choseTarget(player: player)
            } else {
                print("Your target is \(player.playerTeam.characters[0].name)")
                return player.playerTeam.characters[0]
            }
        } else if input == 2 {
            
            if player.playerTeam.characters[1].currentHp == 0 {
                print("\(player.playerTeam.characters[1].name) has no HP left ... he has fallen in the fight. \nChose another fighter who is still alive.")
                return self.choseTarget(player: player)
            } else {
                print("Your target is \(player.playerTeam.characters[1].name)")
                return player.playerTeam.characters[1]
            }
        } else if input == 3 {
            
            if player.playerTeam.characters[2].currentHp == 0 {
                print("\(player.playerTeam.characters[2].name) has no HP left ... he has fallen in the fight. \nChose another fighter who is still alive.")
                return self.choseTarget(player: player)
            } else {
                print("Your target is \(player.playerTeam.characters[2].name)")
                return player.playerTeam.characters[2]
            }
        } else {
            print("You need to chose a target")
            return self.choseTarget(player: player)
        }
    }
    
    func choseCharacter() -> Character {
        print("Chose who gonna play this turn :\n")
        
        print ("""
        1 . \(playerTeam.characters[0].name) - \(type(of: playerTeam.characters[0])) [\(playerTeam.characters[0].currentHp)/\(playerTeam.characters[0].maxHp)HP] || 2 . \(playerTeam.characters[1].name) - \(type(of: playerTeam.characters[1])) [\(playerTeam.characters[1].currentHp)/\(playerTeam.characters[1].maxHp)HP] || 3 . \(playerTeam.characters[2].name) - \(type(of: playerTeam.characters[2])) [\(playerTeam.characters[2].currentHp)/\(playerTeam.characters[2].maxHp)HP]
        """)
        print("➡️ : ", terminator: " ")
        // getInput with this parameter restrains user input to chose a number between 1 and 3
        let input = Game.getInput(numberOfInput: 3)
        // condition 1 : character 1
        if input == 1 {
            // condition to check if this character has HP, if not he can't be played.
            if playerTeam.characters[0].currentHp == 0 {
                print("\(playerTeam.characters[0].name) has no HP left ... he has fallen in the fight. \nChose another team memeber who is still alive.")
                // recursive call of the function choseCharacter
                return self.choseCharacter()
            } else {
                // if character 1 has HP he can be played
                print("What \(playerTeam.characters[0].name) gonna do?")
                // call of the singleton instance of statistics to incrementing
                Statistics.sharedInstance.numberOfTimeCharaPlayed[playerTeam.characters[0].name]? += 1
                return playerTeam.characters[0]
            }
        } else if input == 2 {
            if playerTeam.characters[1].currentHp == 0 {
                print("\(playerTeam.characters[1].name) has no HP left ... he has fallen in the fight. \nChose another team memeber who is still alive.")
                return self.choseCharacter()
            } else {
                print("What \(playerTeam.characters[1].name) gonna do?")
                Statistics.sharedInstance.numberOfTimeCharaPlayed[playerTeam.characters[1].name]? += 1
                return playerTeam.characters[1]
            }
        } else if input == 3 {
            if playerTeam.characters[2].currentHp == 0 {
                print("\(playerTeam.characters[2].name) has no HP left ... he has fallen in the fight. \nChose another team memeber who is still alive.")
                Statistics.sharedInstance.numberOfTimeCharaPlayed[playerTeam.characters[2].name]? += 1
                return self.choseCharacter()
            } else {
                print("What \(playerTeam.characters[2].name) gonna do?")
                return playerTeam.characters[2]
            }
        } else {
            print("You need to chose between 1, 2 or 3.")
            return self.choseCharacter()
        }
    }
}

