//
//  main.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Assignment 1")

var stocks = [KartikStockHolding]()

stocks.append(KartikStockHolding(purchaseSharePrice: 150.50, currentSharePrice: 145.59, numberOfShares: 50, companyName: "IBM"))

stocks.append(KartikStockHolding(purchaseSharePrice: 125.64, currentSharePrice: 132.26, numberOfShares: 5, companyName: "ORACLE"))

stocks.append(KartikStockHolding(purchaseSharePrice: 20, currentSharePrice: 25.59, numberOfShares: 50, companyName: "IBM"))

stocks.sortInPlace({ $0.companyName > $1.companyName})

stocks.description
for stock in stocks {
    stock.display()
    print("\n")
}
