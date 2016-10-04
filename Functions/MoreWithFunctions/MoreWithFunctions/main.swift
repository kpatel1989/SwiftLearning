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


func doesNotModifyArray(values:[Int]) {
    var val = values
    val[1] = 123
    print("DoesnotmodifyArray- \(val)")
}

func modifyElements(values: inout [Int]) {
    values[0] = 245
}

func modify(values:inout [Int]) {
    values = [1,2,3,4]
}

var arr = [345,6789,456,567]
var max1 = arr.min(by: {$0 < $1})
print(max1)

print("Initial Array \(arr)")

doesNotModifyArray(values: arr)
print("No modification to original Array \(arr)")


modifyElements(values: &arr)
print("Modify elements of original Array \(arr)")

modify(values: &arr)
print("Modify original Array \(arr)")


func sum(numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}

let total = sum(numbers:1,2,3,4,5)

print(total )
