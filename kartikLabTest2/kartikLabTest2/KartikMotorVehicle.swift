//
//  KartikMotorVehicle.swift
//  kartikLabTest2
//
//  Created by macadmin on 2016-10-12.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Cocoa

class KartikMotorVehicle: NSObject {
    var kartikYear:Int
    var kartikColor:String
    var kartikDescription: String {
        get {
            return String(format:"Year : %d, Color: %@",kartikYear,kartikColor)
        }
    }
    
    init(year:Int, color:String) {
        kartikYear = year
        kartikColor = color
    }
}
