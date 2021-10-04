//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

var test = 45
let temp = Array(String(test, radix: 3)).map{ Int(String($0))! }
var sum = 0
for i in 0 ..< temp.count {
    sum += temp[i] * Int(pow(3.0, Double(i)))
}
print(sum)
