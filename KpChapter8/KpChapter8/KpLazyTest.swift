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
    
    lazy var area = KpLazyTest.computeArea(obj: self)
    
    class func computeArea(obj:KpLazyTest) -> Int {
        return obj.length * obj.width
    }
}
