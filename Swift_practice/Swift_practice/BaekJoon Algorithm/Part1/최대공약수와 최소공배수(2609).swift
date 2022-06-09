//
//  최대공약수와 최소공배수(2609).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/10.
//

import Foundation

let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let numbers = input[0] > input[1] ? (input[0], input[1]) : (input[1], input[0])

print(findGCD(first: numbers.0, second: numbers.1))
print(findLCM(first: numbers.0, second: numbers.1))

func findGCD(first: Int, second: Int) -> Int {
    var first = first
    var second = second
    while first % second != 0 {
        let value = second
        second = first % second
        first = value
    }
    
    return second
}

func findLCM(first: Int, second: Int) -> Int {
    return (first * second) / findGCD(first: first, second: second)
}
