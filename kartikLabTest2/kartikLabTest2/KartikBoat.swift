//
//  KartikBoat.swift
//  kartikLabTest2
//
//  Created by macadmin on 2016-10-12.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Cocoa

class KartikBoat: KartikMotorVehicle {
    var kartikQuant:String
    
    override var kartikDescription: String {
        get {
            return super.kartikDescription + String(format:", Quant: %@",kartikQuant)
        }
    }
    
    init(year: Int, color: String, quant:String) {
        kartikQuant = quant
        super.init(year: year,color: color)
    }
}
