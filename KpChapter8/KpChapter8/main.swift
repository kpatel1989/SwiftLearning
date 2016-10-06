//
//  main.swift
//  KpChapter8
//
//  Created by macadmin on 2016-10-06.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("More about classes.")

/*var time = KpTime()

time.hour = 10
time.minute = 34
time.second = 45


time.hour = 100
time.minute = 340
time.second = 450


time.hour = 21
time.minute = 32
time.second = 5

time.printTime()
*/

var time2 = KpTime(hour: 12)
time2?.printTime()
var time3 = KpTime(hour: 23,minute: 45)
time3?.printTime()
var time4 = KpTime(hour: 45,minute: 65)
time4?.printFormat()


var str = "Hello"
str.add(str: " World")
print(str)


var cr = KpCircle(r: 5.0)
cr.diameter = 45
print("Radius \(cr.radius)")
cr.display()

cr.diameter = 7
cr.display()

var c1 = KpCircle(r: 10.0)
var c2 = KpCircle(r: 13.0)
var c3 = KpCircle(r: 15.0)
var c4 = KpCircle(r: 16.0)
var c5 = KpCircle(r: 17.0)
print("count=\(KpCircle.count)")
