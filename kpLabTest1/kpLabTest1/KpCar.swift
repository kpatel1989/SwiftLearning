//
//  KpCar.swift
//  kpLabTest1
//
//  Created by macadmin on 2016-10-05.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpCar: NSObject {
    var kpColor:String
    var kpYear:Int
    var kpManufactory:String
    var kpWheels:[KpWheel]
    
    init(color:String, year:Int, manufactory:String) {
        kpColor = color
        kpYear = year
        kpManufactory = manufactory
        kpWheels = [KpWheel]()
    }
    
    func kpPrint() {
        
    }
    
    func kpAddWheel(wheel:KpWheel) {
        
    }
    
    func kpRemoveWheel(wheel:KpWheel) {
        
    }
    
    func kpRemoveWheel(index:Int) {
        
    }
    
    func kpGetNumberOfWheels() -> Int {
        return kpWheels.count
    }
}
