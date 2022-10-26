//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

var array = Array(Array(repeating: 0, count: 31))
var result: [Int] = []

for _ in 0 ..< 28 {
    let number = Int(readLine()!) ?? -1
    array[number] = 1
}

for i in 1 ..< array.count {
    if array[i] != 1 {
        result.append(i)
    }
}

result.sort()
print(result[0])
print(result[1])

