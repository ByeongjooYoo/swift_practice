//
//  없는 숫자 더하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/02/21.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numberSum = Array<Int>(1 ... 9).reduce(0, +)
    let allNumberSum = numbers.reduce(0, +)
    return numberSum - allNumberSum
}
