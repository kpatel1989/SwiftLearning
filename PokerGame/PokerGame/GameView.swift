//
//  GameView.swift
//  PokerGame
//
//  Created by macadmin on 2016-10-14.
//  Copyright © 2016 KartikPatel. All rights reserved.
//

import Cocoa

class GameView: NSObject {

    override init() {
        
    }
    
    func check() {
        //TODO : Mark last action as check for current player.
    }
    
    func bet(amount:Int) {
        //TODO: remove amount from player's balance and add to pot.
        //TODO: set new betting value if changed.
    }
    
    func fold() {
        //TODO: Mark last action as fold for current player.
    }
    
    func displayCurrentStatus() {
        //TODO: Print the name of the players. their balance amount, their cards, pot, table cards
    }
}
