//
//  main.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Assignment 1")

var stocks = [KpStockHolding]()

stocks.append(KpStockHolding(purchaseSharePrice: 150.50, currentSharePrice: 145.59, numberOfShares: 50, companyName: "IBM"))

stocks.append(KpStockHolding(purchaseSharePrice: 125.64, currentSharePrice: 132.26, numberOfShares: 5, companyName: "ORACLE"))

stocks.append(KpStockHolding(purchaseSharePrice: 20, currentSharePrice: 25.59, numberOfShares: 50, companyName: "MICROSOFT"))

stocks.sortInPlace({$0.companyName < $1.companyName})

for stock in stocks {
    stock.display()
    print("\n")
}

print("\n\t\t\t\tAssignment2")

var foreignStocks = [KpStockHolding]()
foreignStocks.append(KpForeignStockHolding(purchaseSharePrice: 150.50, currentSharePrice: 145.59, numberOfShares: 50, companyName: "GOOGLE",conversionRate: 0.12))

foreignStocks.append(KpForeignStockHolding(purchaseSharePrice: 125.64, currentSharePrice: 132.26, numberOfShares: 5, companyName: "FACEBOOK",conversionRate: 1.6))

foreignStocks.append(KpForeignStockHolding(purchaseSharePrice: 20, currentSharePrice: 25.59, numberOfShares: 50, companyName: "APPLE",conversionRate: 12.5))

var allStocks = [KpStockHolding]()
allStocks.appendContentsOf(stocks)
allStocks.appendContentsOf(foreignStocks)

allStocks.sortInPlace({$0.companyName > $1.companyName})
for stock in allStocks {
    stock.display()
    print("\n")
}

