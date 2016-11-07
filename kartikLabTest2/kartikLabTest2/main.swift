//
//  main.swift
//  kartikLabTest2
//
//  Created by macadmin on 2016-10-12.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Foundation

print("Lab Test 2!")

var motorVehicles = [KartikMotorVehicle]()
var streellegal = [KartikStreetLegal]()

var motor1 = KartikMotorVehicle(year: 2015, color: "Green")
var motor2 = KartikMotorVehicle(year: 2016, color: "Blue")
var motor3 = KartikMotorVehicle(year: 2017, color: "Black")
var motor4 = KartikMotorVehicle(year: 2018, color: "Pink")
var motor5 = KartikMotorVehicle(year: 2019, color: "Yellow")

var boat1 = KartikBoat(year: 2015, color: "Green", quant: "Quant1")
var boat2 = KartikBoat(year: 2016, color: "Blue", quant: "Quant2")
var boat3 = KartikBoat(year: 2017, color: "Black", quant: "Quant3")
var boat4 = KartikBoat(year: 2018, color: "Pink", quant: "Quant4")
var boat5 = KartikBoat(year: 2019, color: "Yellow", quant: "Quant5")

var car1 = KartikCar(year: 2015, color: "Green", wheel: "Quant1")
var car2 = KartikCar(year: 2016, color: "Blue", wheel: "Quant2")
var car3 = KartikCar(year: 2017, color: "Black", wheel: "Quant3")
var car4 = KartikCar(year: 2018, color: "Pink", wheel: "Quant4")
var car5 = KartikCar(year: 2019, color: "Yellow", wheel: "Quant5")

var bicycle1 = KartikBicycle(pedal: "2")
var bicycle2 = KartikBicycle(pedal: "1")
var bicycle3 = KartikBicycle(pedal: "4")
var bicycle4 = KartikBicycle(pedal: "5")
var bicycle5 = KartikBicycle(pedal: "6")

var pedestrial1 = KartikPedestrian(leg: "1")
var pedestrial2 = KartikPedestrian(leg: "2")
var pedestrial3 = KartikPedestrian(leg: "3")
var pedestrial4 = KartikPedestrian(leg: "4")
var pedestrial5 = KartikPedestrian(leg: "5")


motorVehicles.append(motor1)
motorVehicles.append(motor2)
motorVehicles.append(motor3)
motorVehicles.append(motor4)
motorVehicles.append(motor5)


motorVehicles.append(boat1)
motorVehicles.append(boat2)
motorVehicles.append(boat3)
motorVehicles.append(boat4)
motorVehicles.append(boat5)

motorVehicles.append(car1)
motorVehicles.append(car2)
motorVehicles.append(car3)
motorVehicles.append(car4)
motorVehicles.append(car5)

streellegal.append(car1)
streellegal.append(car2)
streellegal.append(car3)
streellegal.append(car4)
streellegal.append(car5)

streellegal.append(bicycle1)
streellegal.append(bicycle2)
streellegal.append(bicycle3)
streellegal.append(bicycle4)
streellegal.append(bicycle5)

streellegal.append(pedestrial1)
streellegal.append(pedestrial2)
streellegal.append(pedestrial3)
streellegal.append(pedestrial4)
streellegal.append(pedestrial5)

for vehicle in motorVehicles {
    print(vehicle.kartikDescription)
}

for st in streellegal {
    st.kartikSignalLeftTurn()
    st.kartikSignalRightTurn()
    st.kartikSignalStop()
}

