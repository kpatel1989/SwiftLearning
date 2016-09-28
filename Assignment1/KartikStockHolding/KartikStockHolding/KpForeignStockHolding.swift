//
//  ForeignStockHolding.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

class KpForeignStockHolding: KpStockHolding {
    var conversionRate:Float
    
    init(purchaseSharePrice:Float, currentSharePrice:Float, numberOfShares:Int, companyName:String, conversionRate:Float){
        self.conversionRate = conversionRate
        super.init(purchaseSharePrice: purchaseSharePrice,currentSharePrice: currentSharePrice,numberOfShares: numberOfShares,companyName: companyName)
    }
    
    override func costInDollars() -> Float {
        return purchaseSharePrice * Float(numberOfShares) * conversionRate
    }
    
    override func valueInDollars() -> Float {
        return currentSharePrice * Float(numberOfShares) * conversionRate
    }
    
}
