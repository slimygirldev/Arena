//
//  Game.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation

class Game {
    
    private let playerOne: Player
    private let playerTwo: Player
    private var factoGuild: Guild
    static var uniqname: [String] = []
    private var turnNumber = 0

    init() {
        factoGuild = Guild()
        playerOne = Player(factoGuild: factoGuild)
        playerTwo = Player(factoGuild: factoGuild)
    }

    func start() {
        print("GAME START \n")
        welcome()
        initPlayers()
        fight()
    }
    
    static func getInput(numberOfInput: Int) -> Int {
        if let readLine = readLine() {
            if let input: Int = Int(readLine), 1...numberOfInput ~= input {
                return input
            }
            print("Please chose between 1 and \(numberOfInput).")
            print("➡️ : ", terminator: " ")
        }
        return getInput(numberOfInput: numberOfInput)
    }

    private func choseAction(selectedChara: Character) -> Int {
        print("===========")
        let numberOfInput = selectedChara.actionChoices()
        print("➡️ : ", terminator: " ")
        return Game.getInput(numberOfInput: numberOfInput)
    }
    
    private func fight() {
        print("You enter the tournament of the Arena. \n")
        print("Your rival facing you with anger !\n")
        print("What are you gonna do?\n")
        print("===========")
        while playerOne.teamAlive() && playerTwo.teamAlive() {

            // Number of turns count
            Statistics.sharedInstance.numberTurns = turnNumber

            let playerTurn: Player = turnNumber % 2 == 0 ? playerOne : playerTwo
            let playerTarget: Player = turnNumber % 2 != 0 ? playerOne : playerTwo

            let selectedCharacter = playerTurn.choseCharacter()

            var selectedTarget: Character

            let action: Int = choseAction(selectedChara: selectedCharacter)

            if action == 1 {
                selectedTarget = playerTurn.choseTarget(player: playerTarget)
                selectedCharacter.attack(targetAttak: selectedTarget)

            } else if action == 2 && selectedCharacter is Magus {
                if let magus = selectedCharacter as? Magus {
                    selectedTarget = playerTurn.choseTarget(player: playerTurn)
                    magus.heal(targetCharacter: selectedTarget)
                }
            } else if action == 3 {
                print("... You stand-by waiting.")
                turnNumber += 1
                continue
            }
            turnNumber += 1
        }
        
        print("THE FIGHT IS OVER !!!")
        print("===========")
        if playerOne.teamAlive() {
            print("\(playerOne.nickName) WIN THE FIGHT !\nTHE ARENA HAS ITS NEW KING !!!\n")
            print("\(playerTwo.nickName) LOSES ...")
        } else {
            print("\(playerTwo.nickName) WIN THE FIGHT !\nTHE ARENA HAS ITS NEW KING !!!\n")
            print("\(playerOne.nickName) LOSES ...")
        }
        print("===========")
        playerOne.printSummary()
        playerTwo.printSummary()
        Statistics.sharedInstance.printStats()

    }


    private func welcome() {
        print("""
Welcome to the Arena !! \n
The holy place where mighty warriors fight for the title of King of Fighters !
Here you must defeat your rival in a team battle.
To enter the next round of the Arena's tournament you must register your name ! \n
""")
    }

    private func initPlayers() {
        playerOne.choseName()
        print("Now, let your rival register his name too. \n")
        playerTwo.choseName()
        print("Perfect !\n")
        print("You can now pick fighters to create your Team\nGo on \(playerOne.nickName), chose wisely: \n")
        playerOne.summonTeam()
        print("===========")
        print("It's your turn \(playerTwo.nickName)\nChose your team members : \n")
        print("===========")
        playerTwo.summonTeam()
        print("Your teams are complete. \n Take a look at your opponents before entering the Arena.")
        playerOne.printSummary()
        playerTwo.printSummary()
    }
}
