//
//  File.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/06.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numberSum = Array<Int>(1 ... 9).reduce(0, +)
    let allNumberSum = numbers.reduce(0, +)
    return numberSum - allNumberSum
}
