//
//  main.swift
//  KartikGenerics
//
//  Created by macadmin on 2016-10-14.
//  Copyright © 2016 LambtonCollege. All rights reserved.
//

import Foundation

print("Hello, World!")

extension String {
    static prefix func !(s: String) -> Bool {
        return s.isEmpty
    }

}
let str = "Kartik"

if (!str) {
    print("Empty")
} else {
    print("Not Empty")
}
