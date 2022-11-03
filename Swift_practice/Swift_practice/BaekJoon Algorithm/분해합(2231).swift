//
//  분해합(2231).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/11/04.
//

import Foundation

let numStr = readLine()!
let number = Int(numStr) ?? 0
let count = numStr.count
var start = number - count * 9
var result = 0

for i in start ... number {
    let numbers = splitNumber(i)
    if i + numbers.reduce(0, +) == number {
        result = i
        break
    }
}
print(result)


func splitNumber(_ number: Int) -> [Int] {
    var number = number
    var result: [Int] = []
    while number > 0 {
        result.append(number % 10)
        number = number / 10
    }
    
    return result.reversed()
}
