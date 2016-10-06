//
//  KpCircle.swift
//  KpChapter8
//
//  Created by macadmin on 2016-10-06.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpCircle: NSObject {

    var radius : Double = 0.0{
        willSet {
            print("New Radius = \(newValue)")
        }
        didSet {
            if (radius < 10 || radius > 1000) {
                print("Radius should be between 10-1000")
                radius = oldValue
            }
        }
    }
    
    var diameter : Double {
        get {
            return radius * 2
        }
        set {
            print("Diameter - \(diameter)")
            radius = newValue / 2.0
        }
    }
    
    var circumference:Double {
        
        get {
            return 2 * M_PI * radius
        }
        set {
            radius = newValue / ( 2 * M_PI)
        }
    }
    
    init(r:Double) {
        radius = r
        KpCircle.count += 1
    }
    
    func display() {
        print("Radius : \(radius)")
        print("Diameter : \(diameter)")
        print("Cirumference: \(circumference)")
    }
    
    deinit {
        KpCircle.count -= 1
    }
    
    open static var count :Int = 0
    open class var cnt:Int {
        get {
            return count
        }
        set {
            count = newValue
        }
    }
}
