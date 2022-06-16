//
//  Statistics.swift
//  Arena
//
//  Created by Lorene Brocourt on 20/05/2022.
//

import Foundation

class Statistics {
    // singleton
    static let sharedInstance: Statistics = Statistics()

    // maximum damages points
    var maxDamages: Int = 0
    // best heal in the game
    var maxHeal: Int = 0
    // number of turns played in the party
    var numberTurns: Int = 0
    // chara  who deal the more damages in game party
    var maxDamagesChara: Character = Character(weapon: Weapon())
    // chara who did the best healing of the game party
    var bestHealer: Character = Character(weapon: Weapon())
    // chara who was more played
    var superFighter: Character = Character(weapon: Weapon())
    // dic countent character played turn
    var numberOfTimeCharaPlayed = [String: Int]()

    // function to get the name of more played chara
    private func getNameOfMorePlayedChara() -> String {
        // name of the character
        var moreUsed: String = ""
        // value of the character (how many time he has been used)
        var numberOfCall: Int = 0
        //loop to go in the dictionary and read the informations to search how many times each characters has been used
        for (key, value) in numberOfTimeCharaPlayed {
            //print every character and there values (number of time they have been used)
            print("👤 \(key) : \(value)")
            //condition who compares the value of a chacter to the last value that have been read in the loop
            if value > numberOfCall {
                // stock here the new highest value
                numberOfCall = value
                // stock here the name of the character who has this value
                moreUsed = key
            }
        }
        // returning the name of the character more used at the end of the loop
        return moreUsed
    }

    // func who gonna print the stats
    func printStats() {

        print("GAME STATISTICS :")
        print("===========")
        print("📢 NUMBER OF TURNS : \(numberTurns)")
        print("💥 MAXIMUM DAMAGE : \(maxDamages)")
        print("💪 BEAST OF THE ARENA : \(maxDamagesChara.name)")
        print("✨ MAXIMUM HEAL POWER : \(maxHeal)")
        print("🧙‍♂️ BEST HEALER : \(bestHealer.name)")
        print("🥇 MORE USED : \(getNameOfMorePlayedChara())")
        print("===========\n")
        print("THANK YOU FOR PLAYING THE ARENA")
    }

}
