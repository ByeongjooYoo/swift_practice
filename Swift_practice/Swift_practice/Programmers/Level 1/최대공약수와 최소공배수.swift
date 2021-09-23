//
//  최대공약수와 최소공배수.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var gcd = calGCD(n,m)
    var lcm = calLCM(n,m)
    return [gcd, lcm]
}

func calGCD(_ n:Int, _ m:Int) -> Int {
    var a = n
    var b = m
    while b != 0 {
        var r = a % b
        a = b
        b = r
    }
    return a
}

func calLCM(_ n:Int, _ m:Int) -> Int {
    return n * m / calGCD(n,m)
}
