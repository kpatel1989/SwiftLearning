//
//  KartikStockHolding.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

public class KartikStockHolding: NSObject {

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
        print("Current Share Price : \(currentSharePrice)")
        print("Purchase Share Price: \(purchaseSharePrice)")
        print("Number of shares purchased: \(numberOfShares)")
    }
}
