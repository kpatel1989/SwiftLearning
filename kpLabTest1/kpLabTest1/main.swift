//
//  main.swift
//  kpLabTest1
//
//  Created by macadmin on 2016-10-05.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Lab Test 1")

enum KpColor :String{
    case Black = "Black"
    case Silver = "Silver"
    case Green = "Green"
    case Brown = "Brown"
    case Cyan = "Cyan"
    case White = "White"
}

enum KpYear:Int {
    case Year1 = 2010
    case Year2 = 2011
    case Year3 = 2012
    case Year4 = 2013
    case Year5 = 2014
}

enum KpManufactory :String{
    case Mrf = "Mrf"
    case Ceat = "Ceat"
    case Honda = "Honda"
    case Mazda = "Mazda"
}

let car = KpCar(color: KpColor.Black.rawValue,year: KpYear.Year1.rawValue,manufactory: KpManufactory.Ceat.rawValue)

let wheel1 = KpWheel(color: KpColor.White.rawValue,year: KpYear.Year2.rawValue,manufactory: KpManufactory.Mrf.rawValue)

let wheel2 = KpWheel(color: KpColor.Silver.rawValue,year: KpYear.Year4.rawValue,manufactory: KpManufactory.Ceat.rawValue)

let wheel3 = KpWheel(color: KpColor.Green.rawValue,year: KpYear.Year5.rawValue,manufactory: KpManufactory.Honda.rawValue)

let wheel4 = KpWheel(color: KpColor.Cyan.rawValue,year: KpYear.Year3.rawValue,manufactory: KpManufactory.Mazda.rawValue)

print("Inital car object")
car.kpPrint()
print("\n\n\n")

print("Add wheels")
car.kpAddWheel(wheel: wheel1)
car.kpAddWheel(wheel: wheel2)
car.kpAddWheel(wheel: wheel3)
car.kpAddWheel(wheel: wheel4)
car.kpPrint()
print("\n\n\n")

print("Remove a wheel by wheel object")
car.kpRemoveWheel(wheel:wheel1)
car.kpPrint()
print("\n\n\n")

print("Remove a wheel by index")
car.kpRemoveWheel(index: 2)
car.kpPrint()
print("\n\n\n")
