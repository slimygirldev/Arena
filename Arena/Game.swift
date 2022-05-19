//
//  Game.swift
//  Arena
//
//  Created by Lorene Brocourt on 12/05/2022.
//

import Foundation
/*
 Game has :
 init (Player1: Player, Player2: Player)
 Players
 function start() to launch the party
 
 */
struct Colors {
    static let reset = "\u{001B}[0;0m"
    static let black = "\u{001B}[0;30m"
    static let red = "\u{001B}[0;31m"
    static let green = "\u{001B}[0;32m"
    static let yellow = "\u{001B}[0;33m"
    static let blue = "\u{001B}[0;34m"
    static let magenta = "\u{001B}[0;35m"
    static let cyan = "\u{001B}[0;36m"
    static let white = "\u{001B}[0;37m"
}

class Game {
    
    var playerOne: Player
    var playerTwo: Player
    var factoGuild: Guild
    var playerUniqName: [String]
//    var characterUniqName
    
    init() {
        playerUniqName = [String]()
        factoGuild = Guild()
        playerOne = Player(factoGuild: factoGuild, names: playerUniqName)
        playerTwo = Player(factoGuild: factoGuild, names: playerUniqName)
    }
    
    
    func start() {
        print("GAME START \n")
        welcome()
        initPlayers()
    }
    
    func initPlayers() {
        playerOne.choseName()
        print("Now, let your rival register his name too. \n")
        print(playerUniqName)
        playerTwo.choseName()
        print("Perfect ! \nYou can now pick fighters to create your Team\nGo on \(playerOne.nickName), chose wisely: \n")
        playerOne.summonTeam()
        playerOne.printSummary()

    }
    
    func welcome() {
        print("""
Welcome to the Arena !! \n
The holy place where mighty warriors fight for the title of King of Fighters !
Here you must defeat your rival in a team battle.
To enter the next round of the Arena's tournament you must register your name ! \n
""")
    }
    
    func fight() {
        
    }
}



