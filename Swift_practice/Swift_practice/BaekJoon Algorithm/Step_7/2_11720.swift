//
//  2_11720.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let count: Int = Int(readLine()!)!
let numArray: [Int] = Array(readLine()!).map{ Int(String($0))!}
var sumResult: Int = 0

for i in numArray{
    sumResult += i
}
print(sumResult)

