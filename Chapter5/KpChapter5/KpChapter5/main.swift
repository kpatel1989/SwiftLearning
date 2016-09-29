//
//  main.swift
//  KpChapter5
//
//  Created by macadmin on 2016-09-29.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Hello, World!")
/*for _ in 1...30 {
    var number = Int(arc4random_uniform(10))
    print(number)
}*/

enum GameStatuses {
    case Win,Lost,Continue
}

enum SpecialValues: Int {
    case Two = 2
    case Three = 3
    case Seven = 7
    case Eleven = 11
    case Twelve = 12
}

func rollDice() -> (diceValue1: Int, diceValue2: Int) {
    let dice1 = 1 + Int(arc4random_uniform(6))
    let dice2 = 1 + Int(arc4random_uniform(6))
    return  (dice1, dice2)
}

func printDiceValues(roll: (diceValue1:Int, diceValue2:Int)) {
    print("Dice-1 : \(roll.diceValue1)")
    print("Dice-2 : \(roll.diceValue2)")
    print("Sum : \(roll.diceValue1 + roll.diceValue2)")
}

var option:GameStatuses = GameStatuses.Continue
var myPoint = 0
print("Rolling Dice......");
var diceValues = rollDice()
printDiceValues(roll: diceValues)

switch (diceValues.diceValue1 + diceValues.diceValue2) {
case SpecialValues.Two.rawValue,SpecialValues.Three.rawValue,SpecialValues.Twelve.rawValue:
    option = GameStatuses.Win
    break
case SpecialValues.Seven.rawValue,SpecialValues.Eleven.rawValue:
    option = GameStatuses.Win
    break
default:
    option = GameStatuses.Continue
    myPoint = diceValues.diceValue1 + diceValues.diceValue2
    print ("My point: \(myPoint)")
    break
}

while option == GameStatuses.Continue {
    print("Rolling Dice......");
    var diceValues = rollDice()
    printDiceValues(roll: diceValues)
    if myPoint == diceValues.diceValue1 + diceValues.diceValue2 {
        option = GameStatuses.Win
    } else if diceValues.diceValue1 + diceValues.diceValue2 == 7 {
        option = GameStatuses.Lost
    }
}

switch option {
case GameStatuses.Lost:
    print ("Lost the game")
    break
case GameStatuses.Win:
    print("Won the game")
    break
default:
    print("Unknown Value :\(option)")
    break
}
