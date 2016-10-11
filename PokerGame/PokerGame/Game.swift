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
        //Add a new player to the game.
    }
    
    func distributeCards() {
        //set hole cards for each player.
    }
    
    func playRound() {
        
    }
    
    func performAction(player: Player,action:BettingAction) {
        
    }
    
    func displayCurrentStatus() {
        
    }
    
    func reset() {
        deck.reset()
    }
}
