//
//  나누어 떨어지는 숫자 배열.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    for i in arr {
        if i % divisor == 0 {
            result.append(i)
        }
    }
    if result.isEmpty {
        result.append(-1)
    } else {
        result.sort()
    }
    return result
}
