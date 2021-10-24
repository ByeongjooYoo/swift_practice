//
//  이진 변환 반복하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/24.
//

import Foundation

func solution(_ s: String) -> [Int] {
    var countZ = 0
    var count = 0
    var number = s
    
    while number.count != 1 {
        countZ += countZero(number)
        number = number.filter { $0 == "1" }
        number = convertNumber(number.count)
        count += 1
    }
    return [count, countZ]
}

func countZero(_ s: String) -> Int {
    var count = 0
    for c in s {
        if c == "0" {
            count += 1
        }
    }
    return count
}

func convertNumber(_ count: Int) -> String {
    let result = String(count, radix: 2)
    return result
}
