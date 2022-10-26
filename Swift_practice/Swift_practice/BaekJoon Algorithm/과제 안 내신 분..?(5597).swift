//
//  과제 안 내신 분..?(5597).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/10/27.
//

import Foundation

var array = Array(Array(repeating: 0, count: 31))
var result: [Int] = []

for _ in 0 ..< 28 {
    let number = Int(readLine()!) ?? -1
    array[number] = 1
}

for i in 1 ..< array.count {
    if array[i] != 1 {
        result.append(i)
    }
}

result.sort()
print(result[0])
print(result[1])
