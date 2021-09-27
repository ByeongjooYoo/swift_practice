//
//  소수 찾기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

import Foundation
func solution(_ n:Int) -> Int {
    var count = 0
    for i in 2 ... n {
        if isPrime(i) {
            count += 1
        }
    }
    return count
}

func isPrime(_ n: Int) -> Bool {
    if n == 2 {
        return true
    }
    if n % 2 == 0 {
        return false
    }
    if n < 4 {
        return n == 0 || n == 1 ? false : true
    }
    for i in 2 ... Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}
