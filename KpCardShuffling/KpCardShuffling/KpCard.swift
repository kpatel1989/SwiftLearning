//
//  KpCard.swift
//  KpCardShuffling
//
//  Created by macadmin on 2016-10-03.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpCard: NSObject {

    private let kpFace:String
    private let kpSuit:String
    
    init(face:String, suit:String) {
        self.kpFace = face
        self.kpSuit = suit
    }
    
    override var description: String {
        get {
            return kpFace + " of " + kpSuit
        }
    }
    
    
}
