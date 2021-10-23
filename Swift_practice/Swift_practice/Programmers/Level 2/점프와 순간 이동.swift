//
//  점프와 순간 이동.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/23.
//

import Foundation

func solution(_ n: Int) -> Int {
    var ans:Int = 0
    var number = n
    while number != 1 {
        ans += number % 2
        number /= 2
    }
    return ans + 1
}
