//
//  Player.swift
//  Proj34
//
//  Sets up the Player class, which is represented by the chips on screen. 
//  Sets up a Opponent member of the Player class to represent 
//  the color the player currently is not.
//
//

import UIKit
import GameplayKit

class Player: NSObject, GKGameModelPlayer {

    var chip: ChipColor
    var color: UIColor
    var name: String
    var playerId: Int
    
    static var allPlayers = [Player(chip: .Red), Player(chip: .Black)]
    
    init(chip: ChipColor) {
        self.chip = chip
        self.playerId = chip.rawValue
        
        if chip == .Red {
            color = .redColor()
            name = "Red"
        } else {
            color = .blackColor()
            name = "Black"
        }
        super.init()
    }
    
    var opponent: Player {
        if chip == .Red {
            return Player.allPlayers[1]
        } else {
            return Player.allPlayers[0]
        }
    }

}
