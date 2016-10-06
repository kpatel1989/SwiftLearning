//
//  KpTime.swift
//  KpChapter8
//
//  Created by macadmin on 2016-10-06.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

open class KpTime: NSObject {

    open var hour:Int = 0 {
        willSet {
            print("Hour is " + String(hour) + ", Setting it to " + String(newValue))
        }
        didSet {
            if (hour < 0 || hour > 24) {
                print("Hour should be between 0 and 24. Resetting it to \(oldValue)")
                hour = oldValue
            }
        }
    }
    
    open var minute:Int = 0 {
        willSet {
            print("Hour is " + String(minute) + ", Setting it to " + String(newValue))
        }
        didSet {
            if (minute < 0 || minute > 59) {
                print("Hour should be between 0 and 24. Resetting it to \(oldValue)")
                minute = oldValue
            }
        }
    }
    
    open var second:Int = 0 {
        willSet {
            print("Hour is " + String(second) + ", Setting it to " + String(newValue))
        }
        didSet {
            if (second < 0 || second > 59) {
                print("Hour should be between 0 and 24. Resetting it to \(oldValue)")
                second = oldValue
            }
        }
    }
    
    override init() {
        
    }
    
    init?(hour:Int, minute:Int, second:Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
        if (hour < 0 || hour > 24 || minute < 0 || minute > 59 || second < 0 || second  > 59 ) {
            return nil
        }
    }
    open override var description: String {
        return String(format: "%d:%2d:%2d:%@", (hour == 0 || hour == 12) ? 12 : hour % 12, minute, second, (hour < 12 ? "AM" : "PM"))
    }
    
    func printTime() {
        print(description)
    }
}
