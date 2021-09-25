//
//  자릿수 더하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/25.
//

import Foundation

func solution(_ n: Int) -> Int {
    var answer: Int = 0
    var number: Int = n
    while number > 0 {
        answer += number % 10
        number /= 10
    }
    return answer
}
