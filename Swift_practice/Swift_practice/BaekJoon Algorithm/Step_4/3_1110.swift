//
//  3_1110.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

var count: Int = 0
let num: Int = Int(readLine()!)!
var new_num: Int = num
repeat{
    let right: Int = new_num / 10
    let left: Int = new_num % 10
    new_num = left*10 + ((right + left) % 10)
    count += 1
}while new_num != num

print(count)
