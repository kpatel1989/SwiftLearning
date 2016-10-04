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
    
    init(kpPurchaseSharePrice:Float, kpCurrentSharePrice:Float, kpNumberOfShares:Int, kpCompanyName:String, conversionRate:Float){
        self.conversionRate = conversionRate
        super.init(kpPurchaseSharePrice: kpPurchaseSharePrice,kpCurrentSharePrice: kpCurrentSharePrice,kpNumberOfShares: kpNumberOfShares,kpCompanyName: kpCompanyName)
    }
    
    override func kpCostInDollars() -> Float {
        return kpPurchaseSharePrice * Float(kpNumberOfShares) * conversionRate
    }
    
    override func kpValueInDollars() -> Float {
        return kpCurrentSharePrice * Float(kpNumberOfShares) * conversionRate
    }
    
}
