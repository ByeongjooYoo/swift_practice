//
//  빙고(2578).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/10/28.
//

import Foundation

let N = 10

var matrix: [[Int]] = []
var numbers: [Int] = []
for i in 0 ..< N {
    if (0 ..< 5) ~= i {
        let input = Array(readLine()!.components(separatedBy: " ")).map { Int(String($0)) ?? 0 }
        matrix.append(input)
    } else {
        let input = Array(readLine()!.components(separatedBy: " ")).map { Int(String($0)) ?? 0 }
        numbers += input
    }
}

var result = 1

for (count,number) in numbers.enumerated() {
    for i in 0 ..< matrix.count {
        for j in 0 ..< matrix[i].count {
            if matrix[i][j] == number {
                matrix[i][j] = -1
            }
        }
    }
    
    let line = findLine()
    if line >= 3 {
        print(count + 1)
        break
    }
}


func findLine() -> Int {
    var line = 0
    for i in matrix {
        var count = 0
        for j in i {
            if j == -1 {
                count += 1
            }
        }
        if count == 5 {
            line += 1
        }
    }
    
    for i in 0 ..< matrix.count {
        var count = 0
        for j in 0 ..< matrix[i].count {
            if matrix[j][i] == -1 {
                count += 1
            }
        }
        if count == 5 {
            line += 1
        }
    }
    var count1 = 0
    for i in 0 ..< matrix.count {
        
        if matrix[i][i] == -1 {
            count1 += 1
        }
        if count1 == 5 {
            line += 1
        }
    }
    
    var j = matrix.count - 1
    var count2 = 0
    for i in 0 ..< matrix.count {
        
        if matrix[i][j] == -1 {
            count2 += 1
        }
        if count2 == 5 {
            line += 1
        }
        j -= 1
    }
    
    return line
}

