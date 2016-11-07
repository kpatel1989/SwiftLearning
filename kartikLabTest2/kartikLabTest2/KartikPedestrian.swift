//
//  KartikPedestrian.swift
//  kartikLabTest2
//
//  Created by macadmin on 2016-10-12.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Cocoa

class KartikPedestrian: KartikStreetLegal {
    var kartikLeg:String
    
    var kartikDescription: String {
        get {
            return String(format: "Legs - %@", kartikLeg)
        }
    }
    
    init(leg:String) {
        kartikLeg = leg
    }
    
    func kartikSignalRightTurn() {
        print("Pedestrian - Turn Right");
    }
    
    func kartikSignalLeftTurn() {
        print("Pedestrian - Turn Left");
    }
    
    func kartikSignalStop() {
        print("Pedestrian - Stop!!");
    }
}
