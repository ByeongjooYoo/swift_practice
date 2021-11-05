//
//  카펫.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/11/05.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let area = brown + yellow
    var width = 0
    var height = 0
    let GCD = calculateGCD(area)
    for i in GCD {
        for j in GCD {
            if area == i * j {
                if brown == i * 2 + (j - 2) * 2 {
                    width = i
                    height = j
                    break
                }
            }
        }
    }
    return [width, height]
}

func calculateGCD(_ number: Int) -> [Int] {
    var result: [Int] = []
    for i in 1 ... number {
        if number % i == 0 {
            result.append(i)
        }
    }
    return result
}
