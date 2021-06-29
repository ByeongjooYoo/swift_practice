//
//  3_2577.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let num1: Int = Int(readLine()!)!
let num2: Int = Int(readLine()!)!
let num3: Int = Int(readLine()!)!

let mulNum: [Int] = Array(String(num1 * num2 * num3)).map{ Int(String($0))! }

for i in 0..<10{
    var count: Int = 0
    for j in mulNum {
        if i == j{
            count += 1
        }
    }
    print(count)
}
