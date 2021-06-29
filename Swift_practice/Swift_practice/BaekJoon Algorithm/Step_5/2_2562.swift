//
//  2_2562.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

var max_num: Int = 0
var index: Int = 0

for i in 0..<9{
    let num: Int = Int(readLine()!)!
    if max_num < num{
        max_num = num
        index = i + 1
    }
}
print(max_num)
print(index)

