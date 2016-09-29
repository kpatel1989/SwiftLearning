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

stocks.sort(by: {$0.companyName < $1.companyName})

for stock in stocks {
    stock.display()
    print("\n")
}

print("\n\t\t\t\tAssignment2")

stocks.append(KpForeignStockHolding(purchaseSharePrice: 150.50, currentSharePrice: 145.59, numberOfShares: 50, companyName: "GOOGLE",conversionRate: 0.12))

stocks.append(KpForeignStockHolding(purchaseSharePrice: 125.64, currentSharePrice: 132.26, numberOfShares: 5, companyName: "FACEBOOK",conversionRate: 1.6))

stocks.append(KpForeignStockHolding(purchaseSharePrice: 20, currentSharePrice: 25.59, numberOfShares: 50, companyName: "APPLE",conversionRate: 12.5))

stocks.sort(by: {$0.companyName > $1.companyName})
for stock in stocks {
    stock.display()
    print("\n")
}

func menu() {
    print("Assignment 3")
    
    print("How many stocks you want to save ?")
    let numberOfStocks = Int(readLine()!)!
    let companies = NSMutableArray()
    for _ in 0..<numberOfStocks {
        print("Enter company name :")
        let companyName = readLine()!
        print("Enter current share price for \(companyName):")
        let currentSharePrice = Float(readLine()!)!
        print("Enter share purchase price for \(companyName):")
        let purchaseSharePrice = Float(readLine()!)!
        print("Enter number of stocks to purchase \(companyName):")
        let numberOfStocks = Int(readLine()!)!
        print("Does \(companyName) has a foreign stock (Yes/No)?")
        let isForiegn = readLine()! == "Yes" ? true : false
        
        if isForiegn {
            companies.add(KpStockHolding(purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfStocks, companyName: companyName))
        } else {
            print("What is the conversion rate ?")
            let conversionRate = Float(readLine()!)!
            companies.add(KpForeignStockHolding(purchaseSharePrice: purchaseSharePrice, currentSharePrice: currentSharePrice, numberOfShares: numberOfStocks, companyName: companyName,conversionRate: conversionRate))
        }
    }
    var option:Int = 0
    while(option != 7) {
        print("1. Display stock information with the lowest value")
        print("2. Display stock with the highest value")
        print("3. Display the most profitable stock")
        print("4. Display the least profitable stock")
        print("5. List all stocks sorted by company name (A-Z)")
        print("6. List all stocks sorted from the lowest value to the highest value")
        print("7. Exit")
        print("Choose an option:")
        option = Int(readLine()!)!
        switch option {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
    }
}
