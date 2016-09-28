//
//  KartikAccount.swift
//  KartikAccount
//
//  Created by macadmin on 2016-09-27.
//  Copyright © 2016 lambton. All rights reserved.
//

import Cocoa

public class KartikAccount: NSObject {

    public var name: String
    var amount: Double

    init(name: String, amount: Double){
        self.name = name
        if amount > 0 {
            self.amount = amount
        } else {
            self.amount = 0
        }
    }
}

