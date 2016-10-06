//
//  kpTimeExtension.swift
//  KpChapter8
//
//  Created by macadmin on 2016-10-06.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

extension KpTime {
    convenience init?(hour:Int) {
        self.init(hour:hour,minute: 0,second: 0)
    }
    
    convenience init?(hour:Int,minute:Int) {
        self.init(hour:hour,minute: minute,second: 0)
    }
    
    func printFormat() {
        print(String(self.hour) + "-" + String(self.minute) + "-" + String(self.second))
    }
    
}
