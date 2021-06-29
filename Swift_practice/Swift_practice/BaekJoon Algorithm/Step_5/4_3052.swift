//
//  4_3052.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

import Foundation
var count : Int = 0
var array: [Int] = Array(repeating: -1, count: 10)

for i in 0..<10{
    let num = Int(readLine()!)! % 42
    if !array.contains(num){
        count += 1
    }
    array[i] = num
    
}
print(count)
