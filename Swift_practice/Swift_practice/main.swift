//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation
func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    var divisor: [Int] = []
    for i in 1 ... n {
        if n % i == 0 {
            divisor.append(i)
        }
    }
    
    return divisor.reduce(0, +)
}
print(solution(0))
