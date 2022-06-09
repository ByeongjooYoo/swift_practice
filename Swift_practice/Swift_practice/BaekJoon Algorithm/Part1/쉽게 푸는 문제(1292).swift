//
//  쉽게 푸는 문제(1292).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/10.
//

import Foundation

let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }

var array: [Int] = []
var number = 1
while array.count <= 1000 {
    for _ in 1 ... number {
        array.append(number)
    }
    number += 1
}
var result = 0
for i in input[0] ... input[1] {
    result += array[i-1]
}
print(result)
