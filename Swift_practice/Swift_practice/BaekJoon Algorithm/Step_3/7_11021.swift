//
//  7_11021.swift
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
var array_result : [Int] = []
for i in 0..<test_case{
    var num1 = 0, num2 = 0
    let input_add = readLine()
    if let input_first = input_add{
        var array = input_first.components(separatedBy: " ")
        num1 = Int(array[0])!
        num2 = Int(array[1])!
    }
    array_result.append(num1+num2)
}
for i in 0..<test_case{
    print("Case #\(i+1): \(array_result[i])")
}
