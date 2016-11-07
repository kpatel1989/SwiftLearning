//
//  Players.swift
//  PokerGame
//
//  Created by macadmin on 2016-10-11.
//  Copyright © 2016 KartikPatel. All rights reserved.
//

import Cocoa

class Game: NSObject {
    var deck:Deck = Deck()
    var players:[Player] = []
    var currentPlayer:Player? = nil
    var pot:Int = 0
    
    override init() {
        //TODO: init deck
        //TODO: add players
    }
    
    func start() {
        //TODO: shuffle the deck
        //TODO: distribute cards
        //TODO: start timer for first round.
    }
    
    func addPlayer() {
        //TODO: Add a new player to the game.
    }
    
    func distributeCards() {
        //TODO: set hole cards for each player.
    }
    
    func playRound() {
        //TODO: Distribute cards
        //TODO: Compute Card Ranking. //optional.
        //TODO: start betting
        //TODO: loop on all the players. set currentPlayer
        //TODO: Continue round untill the betting value is same for all.
    }
    
    func performAction(player: Player, action:BettingAction) {
        //TODO: run switch case on action.
        //      if action is check -> call check()
        //      if action is bet -> call bet()
        //      if action is fold. -> call fold()
    }
    
    func reset() {
        //TODO: Clear table, pot,
        deck.reset()
    }
}
