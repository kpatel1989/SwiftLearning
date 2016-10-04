//
//  main.swift
//  KartikStockHolding
//
//  Created by macadmin on 2016-09-28.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Assignment 1")

var kpStocks = [KpStockHolding]()

kpStocks.append(KpStockHolding(kpPurchaseSharePrice: 150.50, kpCurrentSharePrice: 145.59, kpNumberOfShares: 50, kpCompanyName: "IBM"))

kpStocks.append(KpStockHolding(kpPurchaseSharePrice: 125.64, kpCurrentSharePrice: 132.26, kpNumberOfShares: 5, kpCompanyName: "ORACLE"))

kpStocks.append(KpStockHolding(kpPurchaseSharePrice: 20, kpCurrentSharePrice: 25.59, kpNumberOfShares: 50, kpCompanyName: "MICROSOFT"))

kpStocks.sort(by: {$0.kpCompanyName < $1.kpCompanyName})

for stock in kpStocks {
    stock.kpDisplay()
    print("\n")
}

print("Assignment 2")

kpStocks.append(KpForeignStockHolding(kpPurchaseSharePrice: 150.50, kpCurrentSharePrice: 145.59, kpNumberOfShares: 50, kpCompanyName: "GOOGLE",conversionRate: 0.12))

kpStocks.append(KpForeignStockHolding(kpPurchaseSharePrice: 125.64, kpCurrentSharePrice: 132.26, kpNumberOfShares: 5, kpCompanyName: "FACEBOOK",conversionRate: 1.6))

kpStocks.append(KpForeignStockHolding(kpPurchaseSharePrice: 20, kpCurrentSharePrice: 25.59, kpNumberOfShares: 50, kpCompanyName: "APPLE",conversionRate: 12.5))

kpStocks.sort(by: {$0.kpCompanyName > $1.kpCompanyName})
for stock in kpStocks {
    stock.kpDisplay()
    print("\n")
}

print("Assignment 3")

var kpCompanies = [KpStockHolding]()

func kpDisplayStockInformationForLowestValues() {
    print("kpDisplay stock information with the lowest value")
    kpCompanies.sort(by: {$0.kpCurrentSharePrice < $1.kpCurrentSharePrice})
    kpCompanies[0].kpDisplay()
}

func kpDisplayStockWithHighestvalue() {
    print("kpDisplay stock with the highest value")
    kpCompanies.sort(by: {$0.kpCurrentSharePrice < $1.kpCurrentSharePrice})
    kpCompanies[kpCompanies.count-1].kpDisplay()
}

func kpDisplayMostProfitableStock() {
    print("kpDisplay stock information with the most profitable stock")
    let mostProfitableStock = kpCompanies.reduce(kpCompanies[0], {(profitableStock:KpStockHolding, currentStock:KpStockHolding) -> KpStockHolding in
        if (profitableStock.kpCurrentSharePrice - profitableStock.kpPurchaseSharePrice < currentStock.kpCurrentSharePrice - currentStock.kpPurchaseSharePrice ) {
            return currentStock
        }
        return profitableStock
    })
    mostProfitableStock.kpDisplay()
}

func kpDisplayLeastProfitableStock() {
    print("kpDisplay the least profitable stock")
    let leastProfitableStock = kpCompanies.reduce(kpCompanies[0], {(profitableStock:KpStockHolding, currentStock:KpStockHolding) -> KpStockHolding in
        if (profitableStock.kpCurrentSharePrice - profitableStock.kpPurchaseSharePrice > currentStock.kpCurrentSharePrice - currentStock.kpPurchaseSharePrice ) {
            return currentStock
        }
        return profitableStock
    })
    leastProfitableStock.kpDisplay()
}

func kpListAllStocksByCompanyName() {
    print("List all kpStocks sorted by company name (A-Z)")
    kpCompanies.sort(by: {$0.kpCompanyName < $1.kpCompanyName})
    for companyStock in kpCompanies {
        companyStock.kpDisplay()
        print("\n")
    }
}

func kpListAllStocksByValues() {
    print("List all kpStocks sorted from the lowest value to the highest value")
    kpCompanies.sort(by: {$0.kpCurrentSharePrice < $1.kpCurrentSharePrice})
    for companyStock in kpCompanies {
        companyStock.kpDisplay()
        print("\n")
    }
}

func kpDisplayMenu() {
    print("How many kpStocks you want to save ?")
    let numberOfkpStocks = Int(readLine()!)!
    for _ in 0..<numberOfkpStocks {
        print("Enter company name :")
        let kpCompanyName = readLine()!
        print("Enter current share price for \(kpCompanyName):")
        let kpCurrentSharePrice = Float(readLine()!)!
        print("Enter share purchase price for \(kpCompanyName):")
        let kpPurchaseSharePrice = Float(readLine()!)!
        print("Enter number of kpStocks to purchase \(kpCompanyName):")
        let numberOfkpStocks = Int(readLine()!)!
        print("Does \(kpCompanyName) has a foreign stock (Yes/No)?")
        let isForiegn = readLine()! == "Yes" ? true : false
        
        if !isForiegn {
            kpCompanies.append(KpStockHolding(kpPurchaseSharePrice: kpPurchaseSharePrice, kpCurrentSharePrice: kpCurrentSharePrice, kpNumberOfShares: numberOfkpStocks, kpCompanyName: kpCompanyName))
        } else {
            print("What is the conversion rate ?")
            let conversionRate = Float(readLine()!)!
            kpCompanies.append(KpForeignStockHolding(kpPurchaseSharePrice: kpPurchaseSharePrice, kpCurrentSharePrice: kpCurrentSharePrice, kpNumberOfShares: numberOfkpStocks, kpCompanyName: kpCompanyName,conversionRate: conversionRate))
        }
    }
    var option:Int = 0
    while(option != 7) {
        print("1. kpDisplay stock information with the lowest value")
        print("2. kpDisplay stock with the highest value")
        print("3. kpDisplay the most profitable stock")
        print("4. kpDisplay the least profitable stock")
        print("5. List all kpStocks sorted by company name (A-Z)")
        print("6. List all kpStocks sorted from the lowest value to the highest value")
        print("7. Exit")
        print("Choose an option:")
        option = Int(readLine()!)!
        switch option {
        case 1:
            kpDisplayStockInformationForLowestValues()
            break
        case 2:
            kpDisplayStockWithHighestvalue()
            break
        case 3:
            kpDisplayMostProfitableStock()
            break
        case 4:
            kpDisplayLeastProfitableStock()
            break
        case 5:
            kpListAllStocksByCompanyName()
            break
        case 6:
            kpListAllStocksByValues()
            break
        case 7:
            break;
        default:
            print("Enter a valid option!!!")
            break
        }
    }
}
kpDisplayMenu()
