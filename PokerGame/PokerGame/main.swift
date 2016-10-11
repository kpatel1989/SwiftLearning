//
//  main.swift
//  PokerGame
//
//  Created by macadmin on 2016-10-07.
//  Copyright © 2016 KartikPatel. All rights reserved.
//

import Foundation

print("Poker")

let DECK_SIZE = 52

public enum CardNumber:Int {
    case Ace = 14
    case Deuce = 2
    case Three = 3
    case Four = 4
    case Five = 5
    case Six = 6
    case Seven = 7
    case Eight = 8
    case Nine = 9
    case Ten = 10
    case Jack = 11
    case Queen = 12
    case King = 13
}

public enum Face {
    case Spade,Heart,Club,Diamond
}

public struct Card {
    var number: CardNumber
    var face: Face
}

public struct Player {
    var name:String
    var holeCards:[Card]
    var balance:Int
}

public enum BettingAction {
    case Fold, Check, Bet
}

enum Rounds:Int {
    case The_Flop,The_Middle,The_River
}

//TODO: init Game
//TODO: start playing..
