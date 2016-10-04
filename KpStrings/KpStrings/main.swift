//
//  main.swift
//  KpStrings
//
//  Created by macadmin on 2016-10-04.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Enter a long string")
let str = "This is a very long string with multiple words. This is a string with more than one sentence" //readLine()!

var words = str.components(separatedBy: " ")

var uniqueWords = [String:Int]()

for word in words {
    if let count = uniqueWords[word.lowercased()] {
        uniqueWords[word.lowercased()] = count + 1
    } else {
        uniqueWords[word.lowercased()] = 1
    }
}

print(uniqueWords)
