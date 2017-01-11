//
//  Sign.swift
//  RPS
//
//  Created by Adrian McDaniel on 1/11/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "✋🏽"
        case .scissors:
            return "✌🏽"
        }
    }
    
    func gamePlay(appSign: Sign) -> GameState {
        switch self {
        case .rock:
            if appSign == .paper {
                return .lose
            } else if appSign == .scissors {
                return .win
            } else {
                return .draw
            }
        case .paper:
            if appSign == .scissors {
                return .lose
            } else if appSign == .rock {
                return .win
            } else {
                return .draw
            }
        case .scissors:
            if appSign == .paper {
                return .win
            } else if appSign == .rock {
                return .lose
            } else {
                return .draw
            }
        
        }
    }
}
