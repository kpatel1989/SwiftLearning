//
//  main.swift
//  KpArraysAndClosures
//
//  Created by macadmin on 2016-09-30.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Arrays and Closures!")

var animals = [String?]()
animals = ["Dog","Cat",nil]
animals.append("Cow")
animals.insert("Elephant", at: 2)
print("Animals: \(animals.description)")


var names = [String](repeating:"ab",count:5)
names.append("Kartik")
names.append("Jay")
print (names)


var booleans = [Bool](repeating:false,count:2)
booleans.append(false)
booleans.append(true)
print (booleans.description)

var intList1 = [Int]()
var intList2 = [Int]()

intList1 = [1,2,3,4]
intList2 = [5,6,7,8]

print(intList1)
print(intList2)

var listCopy = intList1

if (listCopy == intList1) {
    print("List copy is same as int list")
} else {
    print("List copy is different than int list")
}

var mergedArray = intList1 + intList2
print("Merged List \(mergedArray)")

print("Iterating through array")
for i in stride(from: 0, to: mergedArray.count, by: 1) {
    print(mergedArray[i])
}

print("Looping without stride")
for element in mergedArray {
    print(element)
}

var arr = Array<Int>()
arr.append(contentsOf: intList1)
print(arr)

func sum(result:Int, element:Int) -> Int {
    return result + element
}

let emptyArray = [Int]()
if (emptyArray.isEmpty) {
    print("Array is empty")
}

print("\(mergedArray) Size : \(mergedArray.count), Capacity: \(mergedArray.capacity)")


mergedArray.remove(at: 0)
print(mergedArray)
mergedArray.removeLast()
print(mergedArray)

let index = mergedArray.index(of: 5)
print(index)

mergedArray += mergedArray
print(mergedArray)

print(mergedArray[4...9])

mergedArray[2...5] = [1,2]
print(mergedArray)

mergedArray[2...3] = []
print(mergedArray)
