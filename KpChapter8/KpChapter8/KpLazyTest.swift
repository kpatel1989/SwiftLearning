//
//  KpLazyTest.swift
//  KpChapter8
//
//  Created by macadmin on 2016-10-06.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpLazyTest: NSObject {
    var length:Int
    var width:Int

    init(l:Int,w:Int) {
        length = l
        width = w
    }
    
    static var area1:Int {
        get {
            return KpLazyTest.computeArea()
        }
    }
    
    lazy var area = KpLazyTest.computeArea()
    
    class func computeArea() -> Int {
        return 10
    }
}

