//
//  8_11022.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()
var test_case = 0

if let input = input{
    test_case = Int(input)!
}
var array_first : [Int] = []
var array_second : [Int] = []
for i in 0..<test_case{
    let input_add = readLine()
    if let input_first = input_add{
        var array = input_first.components(separatedBy: " ")
        array_first.append(Int(array[0])!)
        array_second.append(Int(array[1])!)
    }
}
for i in 0..<test_case{
    print("Case #\(i+1): \(array_first[i]) + \(array_second[i]) = \(array_first[i] + array_second[i])")
}
