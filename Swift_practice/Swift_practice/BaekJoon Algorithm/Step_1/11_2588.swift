//
//  11_2588.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input_1 = readLine()
let input_2 = readLine()

var num_1: Int = 0
var num_2: Int = 0

var array: [Int] = []

if let input_1 = input_1{
    num_1 = Int(input_1)!
}

if let input_2 = input_2{
    num_2 = Int(input_2)!
}
let temp: Int = num_2
while num_2 > 0 {
    array.append(num_2 % 10)
    num_2 /= 10
}

for i in 0..<array.count{
    print(array[i]*num_1)
}
print(num_1*temp)

