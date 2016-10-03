//
//  KpDeck.swift
//  KpCardShuffling
//
//  Created by macadmin on 2016-10-03.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpDeck: NSObject {

    private var deck: [KpCard] = []
    private var currentCard: Int = 0
    public let numberOfCards = 52;
    
    
    override init() {
        let faces:[String] = [
            "Ace", "Deuce" ,"Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"
        ]
        let suits:[String] = ["Spade", "Heart", "Club", "Diamond"]
        for index in 0..<numberOfCards {
            deck.append(KpCard(face: faces[index % 13], suit: suits[index / 13]))
        }
    }
    
    func shuffle() {
        for _ in 0..<numberOfCards {
            let randomNumber = arc4random_uniform(UInt32(self.numberOfCards))
            let temp = deck[0];
            deck[0] = deck[Int(randomNumber)]
            deck[Int(randomNumber)] = temp
        }
    }
    
    func dealCard() -> KpCard? {
        if (currentCard < deck.count) {
            currentCard += 1
            return deck[currentCard-1]
        } else {
            return nil
        }
    }
    
    override var description: String {
        get  {
            var printString = "Deck:\n"
            for index in 0..<numberOfCards {
                printString += deck[index].description
            }
            return printString
        }
    }
}
