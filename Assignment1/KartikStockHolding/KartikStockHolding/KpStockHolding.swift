//
//  KartikStockHolding.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

public class KpStockHolding: NSObject {

    private(set) var kpPurchaseSharePrice:Float
    private(set) var kpCurrentSharePrice:Float
    private(set) var kpNumberOfShares:Int
    var kpCompanyName:String
    
    init(kpPurchaseSharePrice:Float, kpCurrentSharePrice:Float, kpNumberOfShares:Int, kpCompanyName:String){
        self.kpPurchaseSharePrice = kpPurchaseSharePrice
        self.kpCurrentSharePrice = kpCurrentSharePrice
        self.kpNumberOfShares = kpNumberOfShares
        self.kpCompanyName = kpCompanyName
    }
    
    func kpCostInDollars() -> Float {
        return kpPurchaseSharePrice * Float(kpNumberOfShares)
    }
    
    func kpValueInDollars() -> Float {
        return kpCurrentSharePrice * Float(kpNumberOfShares)
    }
    
    func kpDisplay() {
        print("Company Name : \(kpCompanyName)")
        let kpNumberFormatter = NumberFormatter()
        kpNumberFormatter.numberStyle = NumberFormatter.Style.currency
        kpNumberFormatter.currencySymbol = "$"
        print("Current Share Price : \(kpNumberFormatter.string(for:  kpCurrentSharePrice)!)")
        print("Purchase Share Price: \(kpNumberFormatter.string(for: kpPurchaseSharePrice)!)")
        print("Number of shares purchased: \(kpNumberOfShares)")
        print("Cost in Dollars : \(kpNumberFormatter.string(for: kpCostInDollars())!)")
        print("Value in Dollars : \(kpNumberFormatter.string(for: kpValueInDollars())!)")
    }
}
