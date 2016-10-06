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
        print("Car color : " + kpColor)
        print("Car year : \(kpYear)")
        print("Car manufactory : " + kpManufactory)
        print("Number of wheels : \(kpGetNumberOfWheels())" )
        for wheel in kpWheels {
            print("\n")
            wheel.kpPrint()
        }
    }
    
    func kpAddWheel(wheel:KpWheel) {
        kpWheels.append(wheel)
    }
    
    func kpRemoveWheel(wheel:KpWheel) {
        for index in 0..<kpWheels.count {
            if (wheel == kpWheels[index]) {
                kpWheels.remove(at: index)
                break;
            }
        }
    }
    
    func kpRemoveWheel(index:Int) {
        kpWheels.remove(at: index)
    }
    
    func kpGetNumberOfWheels() -> Int {
        return kpWheels.count
    }
}
