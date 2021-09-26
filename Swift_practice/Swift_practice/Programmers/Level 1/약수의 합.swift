//
//  약수의 합.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/26.
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
