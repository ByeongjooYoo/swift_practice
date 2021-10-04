//
//  약수의 개수와 덧셈.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/04.
//

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in left ... right {
        let numOfDivisor = countDivisor(i)
        if numOfDivisor % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    return result
}

func countDivisor(_ number: Int) -> Int {
    var result = 0
    for i in 1 ... number {
        if number % i == 0 {
            result += 1
        }
    }
    return result
}
