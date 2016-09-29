//
//  main.swift
//  KpChapter5
//
//  Created by macadmin on 2016-09-29.
//  Copyright © 2016 lambton. All rights reserved.
//

import Foundation

print("Hello, World!")


for _ in 1...100 {
    let randomValue = arc4random_uniform(5) + 5
    print(randomValue)
}
