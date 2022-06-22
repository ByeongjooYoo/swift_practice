//
//  빗물(14719).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/22.
//

import Foundation

let input1 = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let input2 = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let (x, y) = (input1[0], input1[1])
var matrix = Array(repeating: Array(repeating: 0, count: y), count: x)

for i in 0 ..< input2.count {
    let count = input2[i]
    for j in 0 ..< count {
        matrix[j][i] = 1
    }
}
matrix.reverse()


var result = 0
for matrix in matrix {
    var index = Array<Int>()
    for i in 0 ..< matrix.count {
        if matrix[i] == 1 {
            index.append(i)
        }
    }
    if index.count == 1 || index.count == 0 {
        continue
    } else {
        for j in 1 ..< index.count {
            result += index[j] - (index[j-1] + 1)
        }
    }
}

print(result)
