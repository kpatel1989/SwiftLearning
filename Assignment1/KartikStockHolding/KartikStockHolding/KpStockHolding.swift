//
//  KartikStockHolding.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

public class KpStockHolding: NSObject {

    private(set) var purchaseSharePrice:Float
    private(set) var currentSharePrice:Float
    private(set) var numberOfShares:Int
    var companyName:String
    
    init(purchaseSharePrice:Float, currentSharePrice:Float, numberOfShares:Int, companyName:String){
        self.purchaseSharePrice = purchaseSharePrice
        self.currentSharePrice = currentSharePrice
        self.numberOfShares = numberOfShares
        self.companyName = companyName
    }
    
    func costInDollars() -> Float {
        return purchaseSharePrice * Float(numberOfShares)
    }
    
    func valueInDollars() -> Float {
        return currentSharePrice * Float(numberOfShares)
    }
    
    func display() {
        print("Company Name : \(companyName)")
        let numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        numberFormatter.currencySymbol = "$"
        
        print("Current Share Price : \(numberFormatter.stringFromNumber(currentSharePrice)!)")
        print("Purchase Share Price: \(numberFormatter.stringFromNumber(purchaseSharePrice)!)")
        print("Number of shares purchased: \(numberOfShares)")
        print("Cost in Dollars : \(numberFormatter.stringFromNumber(costInDollars())!)")
        print("Value in Dollars : \(numberFormatter.stringFromNumber(valueInDollars())!)")
    }
}
