//
//  KpMonths.swift
//  KpDictionary
//
//  Created by macadmin on 2016-10-04.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpMonths: NSObject {
    var kpMonthName : String
    var kpNumberOfDays : Int
    
    init(monthName:String, numberOfDays:Int){
        self.kpMonthName = monthName
        self.kpNumberOfDays = numberOfDays
    }
}
