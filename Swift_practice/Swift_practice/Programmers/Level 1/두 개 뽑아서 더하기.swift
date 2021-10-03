//
//  두 개 뽑아서 더하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/03.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var sumArray = Set<Int>()
    for i in 0 ..< numbers.count {
        for j in i + 1 ..< numbers.count {
            sumArray.insert(numbers[i] + numbers[j])
        }
    }
    let result = Array(sumArray).sorted()
    return result
}
