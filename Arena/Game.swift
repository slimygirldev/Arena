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

class Game {

    var playerOne: Player
    var playerTwo: Player

    init() {

        var player1: Player = Player()
        playerOne = player1
        var player2: Player = Player()
        playerTwo = player2

    }


    func start() {
        print("Game start")
        welcome()
        initPlayers()

    }

    func initPlayers() {
        playerOne = Player()
        playerOne.choseName()
        playerTwo = Player()
        playerTwo.choseName()
    }


    func welcome() {
        print("""
Welcome to the Arena !!
The only place where you can test you abilities to combat !
Please join the next tournament by enter your name ! \n
""")
    }
    
    func fight() {

    }
}



