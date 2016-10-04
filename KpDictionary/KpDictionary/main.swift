//
//  main.swift
//  KpDictionary
//
//  Created by macadmin on 2016-10-04.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Dictionary")

var countryCode: Dictionary<String, String> = ["IN": "India"]

var countryCode2: [String: String] = ["CAN":"Canada", "US" : "United States of America", "IN" :"India"]

var countries: [Int:String] = [1:"IN", 2: "US", 3:"CAN"]

print(countryCode2)

print(countryCode2["CAN"])

for (key,value) in countries {
    print("\(value) = \(countryCode2[value]!)")
}

var keys = countryCode2.keys

var sortedKeys = keys.sorted()

for key in sortedKeys {
    print(key + "->" + countryCode2[key]!)
}

var reversedDict = countryCode2.reversed()

print(reversedDict.description)
/*
var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
enum numDays:Int {
    case "Jan": 31,
    "Feb" = 28
}
/*    "Feb" = 28,
    "Mar" : 31
    "Apr" = 30
    "May" = 31
    "Jun" = 30
    "Jul" = 31
    "Aug" = 31
    "Sep" = 30
    "Oct" = 31
    "Nov" = 30
    "Dec" = 31
}*/

var monthsDict: <String,KpMonths> = []()
for index in months {
    monthsDict[index] = KpMonths(monthName: index, numberOfDays: numDays[index])
}
*/
var customSorting = countryCode2.sorted(by: {$0.key < $1.key})

print(customSorting.description)


let gradeBook = [
    "Susan" : ["maths" : 90, "english" : 40, "music" : 100],
    "Kartik" : ["maths" : 67, "english" : 83, "music" : 67],
    "Evan" : ["maths" : 92, "english" : 45, "music" : 100]
]

var allGradesTotal = 0.0
var allGrades = 0

for (studentName, grades) in gradeBook {
    
    let total = grades.reduce(0, {$0 + $1.value})
    print(studentName + " -> \(total)")
    allGradesTotal += Double(total)
    allGrades += grades.keys.count
}

print("Average grade = " + String(format:"%.2f", allGradesTotal/Double(allGrades)))


var dynamicCreation: [Int:String] = [:]


dynamicCreation[1] = "Hello"
dynamicCreation[2] = "World"
dynamicCreation[3] = "asdasd"

dynamicCreation.updateValue("Hey", forKey: 1)

print(dynamicCreation)


dynamicCreation.removeValue(forKey: 3)
print(dynamicCreation)

