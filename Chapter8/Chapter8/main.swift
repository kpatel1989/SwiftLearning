//
//  main.swift
//  Chapter8
//
//  Created by macadmin on 2016-10-07.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Time {
    var hour:Int
    var minute:Int
    var second:Int
    
    init(h:Int, m:Int, s:Int) {
        hour = h
        minute = m
        second = s
    }
}


extension Time {
    init(h:Int) {
        self.init(h:h,m:0,s:0)
    }
    init(h:Int,m:Int) {
        self.init(h:h,m:m,s:0)
    }
}


var t1 = Time(h: 10,m: 10,s: 10)
var t2 = Time(h: 12)
var t3 = Time(h: 34, m: 34)

func exampleOptionalType (str:String,num:Int?) {
    switch num {
    case .some:
        print("\(num!)")
    case .none:
        print("Not init")
    default:
        print("default")
    }
}

var var1:Int? = 10
var var2 = Optional<Int>(100)
var var3:Int? = nil

exampleOptionalType(str: "Int Opt", num: var1)
exampleOptionalType(str: "Int Opt 2", num: var2)
exampleOptionalType(str: "Int Opt 3", num: var3)
