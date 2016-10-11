//
//  KpCommissionEmployee.swift
//  KpInheritance
//
//  Created by macadmin on 2016-10-11.
//  Copyright © 2016 KartikPatel. All rights reserved.
//

import Cocoa

class KpCommissionEmployee: NSObject,KpProtocol {

    open var kartikName : String!
    open var kartikGrossSales: NSDecimalNumber
    open var kartikCommissionRate : NSDecimalNumber
    
    func kpPayMoney() -> NSDecimalNumber {
        return kpPaymentAmount
    }
    
    var Name: String = ""
    
    var kpPaymentAmount: NSDecimalNumber = 0.0
    
    public init?(name: String , grossSales: NSDecimalNumber, commissionRate: NSDecimalNumber) {
        if (kartikName.isEmpty || (grossSales.compare(NSDecimalNumber.zero) == ComparisonResult.orderedAscending) || (commissionRate.compare(NSDecimalNumber.zero) == ComparisonResult.orderedAscending)) {
            return nil
        }
        kartikName = name
        kartikGrossSales = grossSales
        kartikCommissionRate = commissionRate
    }
}
