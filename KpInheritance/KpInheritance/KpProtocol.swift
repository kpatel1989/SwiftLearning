//
//  KpProtocol.swift
//  KpInheritance
//
//  Created by macadmin on 2016-10-11.
//  Copyright © 2016 KartikPatel. All rights reserved.
//

import Cocoa

protocol KpProtocol {
    var kpPaymentAmount:NSDecimalNumber {
        get
        set
    }
    
    var Name:String {
        get
        set
    }
    func kpPayMoney() -> NSDecimalNumber
    
    func area() -> Float
}

protocol NewProtocol : KpProtocol {
    
}

class KpInvoice : NewProtocol {
    func area() -> Float {
        return 10.0
    }

    func kpPayMoney() -> NSDecimalNumber {
        return kpPaymentAmount
    }

    var Name: String = ""

    var kpPaymentAmount: NSDecimalNumber = 0.0

    
    
}
