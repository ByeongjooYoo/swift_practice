//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, K) = (input[0], input[1])
var numbers = Array(1...N)
var result = Array<Int>()
var index = K
while !numbers.isEmpty {
    if index <= numbers.count {
        result.append(numbers[index - 1])
        numbers.remove(at: index - 1)
        index += (K - 1)
    } else {
        index -= numbers.count
    }
    
}

print("<\(result.map { String($0) }.joined(separator: ", "))>")

