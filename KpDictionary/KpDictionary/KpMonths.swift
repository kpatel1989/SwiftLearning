//
//  KpMonths.swift
//  KpDictionary
//
//  Created by macadmin on 2016-10-04.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpMonths: NSObject {
    var monthName : String
    var numberOfDays : Int
    
    init(monthName:String, numberOfDays:Int){
        self.monthName = monthName
        self.numberOfDays = numberOfDays
    }
}
