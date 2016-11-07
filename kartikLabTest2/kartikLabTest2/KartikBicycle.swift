//
//  KartikBicycle.swift
//  kartikLabTest2
//
//  Created by macadmin on 2016-10-12.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Cocoa

class KartikBicycle: KartikStreetLegal {
    var kartikPedal:String
    var kartikDescription: String {
        get {
            return String(format: "Pedals - %@", kartikPedal)
        }
    }
    
    init(pedal:String) {
        kartikPedal = pedal
    }
    
    func kartikSignalRightTurn() {
        print("Bicycle - Turn Right");
    }
    
    func kartikSignalLeftTurn() {
        print("Bicycle - Turn Left");
    }
    
    func kartikSignalStop() {
        print("Bicycle - Stop!!");
    }

}
