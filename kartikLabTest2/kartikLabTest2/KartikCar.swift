//
//  KartikCar.swift
//  kartikLabTest2
//
//  Created by macadmin on 2016-10-12.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Cocoa

class KartikCar: KartikMotorVehicle,KartikStreetLegal {
    var kartikWheel:String
    
    override var kartikDescription: String {
        get {
            return super.kartikDescription + String(format:", Wheel: %@",kartikWheel)
        }
    }
    
    init(year: Int, color: String, wheel:String) {
        kartikWheel = wheel
        super.init(year: year,color: color)
    }
    
    func kartikSignalRightTurn() {
        print("Car - Turn Right!!");
    }
    
    func kartikSignalLeftTurn() {
        print("Car - Turn Left!!");
    }
    
    func kartikSignalStop() {
        print("Car Stop!!");
    }
}
