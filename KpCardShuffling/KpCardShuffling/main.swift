//
//  main.swift
//  KpCardShuffling
//
//  Created by macadmin on 2016-10-03.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Card Shuffling...")

var deck = KpDeck()
deck.shuffle()
//print(deck.description)
print("Dealing....")
for i in 0..<deck.numberOfCards  {
    if let card = deck.dealCard() {
        var desc = card.description
        var padding = String(repeating: " ", count: 20 - desc.characters.count)
        print(desc+padding, terminator: "\t")
    }
    if i%4 == 0 {
        print("\n")
    }
}

print("\n")
