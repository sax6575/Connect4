//
//  Move.swift
//  Proj34
//
//  Intializes Move class, specifically the columns.   
//

import GameplayKit
import UIKit

class Move: NSObject, GKGameModelUpdate {
    
    var value: Int = 0
    var column: Int
    
    init(column: Int) {
        self.column = column
    }
    
}
