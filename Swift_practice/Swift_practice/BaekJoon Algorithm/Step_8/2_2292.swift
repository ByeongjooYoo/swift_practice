//
//  2_2292.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

import Foundation

var num: Int = Int(readLine()!)!
var result: Int = 0
var sum: Int = 0
while sum < num {
    if result == 0{
        sum = 1
    }else{
        sum += 6 * result
    }
    result += 1
}
print(result)
