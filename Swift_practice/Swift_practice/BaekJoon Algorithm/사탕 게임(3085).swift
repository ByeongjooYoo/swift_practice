//
//  사탕 게임(3085).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/10/25.
//

import Foundation

let n = Int(String(readLine()!)) ?? 0
var matrix: [[String]] = []
var tempResult = 0
var result = 0

for _ in 0 ..< n {
    let input = Array(readLine()!).map{ String($0) }
    matrix.append(input)
}

for i in 0 ..< n {
    for j in 0 ..< n {
        if j + 1 < n, matrix[i][j] != matrix[i][j + 1] {
            swapHorizontal(i, j)
            let horizontalMax = horizontalMax()
            let verticalMax = verticalMax()
            tempResult = max(horizontalMax, verticalMax)
            swapHorizontal(i, j)
        }
        result = max(result, tempResult)
    }
}

for i in 0 ..< n {
    for j in 0 ..< n {
        if j + 1 < n, matrix[j][i] != matrix[j + 1][i] {
            swapVertical(j, i)
            let horizontalMax = horizontalMax()
            let verticalMax = verticalMax()
            tempResult = max(horizontalMax, verticalMax)
            swapVertical(j, i)
        }
        result = max(result, tempResult)
    }
}

print(result)

func horizontalMax() -> Int {
    var result = 0
    for i in 0 ..< n {
        var sum = 1
        for j in 0 ..< n {
            if j + 1 < n, matrix[i][j] == matrix[i][j + 1] {
                sum += 1
            } else if j + 1 < n, matrix[i][j] != matrix[i][j + 1] {
                result = max(result, sum)
                sum = 1
            }
        }
        result = max(result, sum)
    }
    return result
}

func verticalMax() -> Int {
    var result = 0
    for i in 0 ..< n {
        var sum = 1
        for j in 0 ..< n {
            if j + 1 < n, matrix[j][i] == matrix[j + 1][i] {
                sum += 1
            } else if j + 1 < n, matrix[j][i] != matrix[j + 1][i] {
                result = max(result, sum)
                sum = 1
            }
        }
        result = max(result, sum)
    }
    return result
}

func swapHorizontal(_ a: Int, _ b: Int){
    let temp = matrix[a][b]
    matrix[a][b] = matrix[a][b + 1]
    matrix[a][b + 1] = temp
}
func swapVertical(_ a: Int, _ b: Int){
    let temp = matrix[a][b]
    matrix[a][b] = matrix[a + 1][b]
    matrix[a + 1][b] = temp
}

