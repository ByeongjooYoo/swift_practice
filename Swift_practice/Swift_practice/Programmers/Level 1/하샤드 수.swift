//
//  하샤드 수.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

func solution(_ x:Int) -> Bool {
    var numbers: [Int] = []
    var number = x
    while number > 0 {
        numbers.append(number % 10)
        number = number / 10
    }
    numbers = numbers.reversed()
    if x % numbers.reduce(0) { $0 + $1 } == 0 {
        return true
    } else {
        return false
    }
}
