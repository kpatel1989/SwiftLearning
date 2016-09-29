//
//  main.swift
//  MoreWithFunctions
//
//  Created by macadmin on 2016-09-29.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("More with functions")

func sortOrder(isAscending:Bool) -> (Int,Int) -> Bool {
    func ascending(a:Int,b:Int) -> Bool{
        return a > b
    }
    func descending(a:Int,b:Int) -> Bool{
        return a < b
    }
    return isAscending ? ascending : descending
}

var order = sortOrder(isAscending: true)

print(order(10,45));
print(order(10,5));
print(order(56,5));

