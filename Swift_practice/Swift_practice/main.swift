//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

let input1 = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, S) = (input1[0], input1[1])

var numbers = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }

var result: [Int] = []
var end = 0
var sum = 0
for start in 0 ..< N {
    while sum < S && end < N {
        sum += numbers[end]
        end += 1
    }
    if sum >= S {
        result.append(end - start)
    }
    sum -= numbers[start]
}

print(result.min() ?? 0)
