//
//  KpWheel.swift
//  kpLabTest1
//
//  Created by macadmin on 2016-10-05.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpWheel: NSObject {

    var kpColor:String
    var kpYear:Int
    var kpManufactory:String
    
    init(color:String, year:Int, manufactory:String) {
        kpColor = color
        kpYear = year
        kpManufactory = manufactory
    }
    
    func kpPrint() {
        
    }
}
